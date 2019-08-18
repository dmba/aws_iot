part of 'package:aws_iot/src/actions/actions.dart';

class CancelJob extends Action<Job> {
  CancelJob(this.jobId, this.force, this.data);

  final String jobId;
  final bool force;
  final Job data;

  @override
  Future<Job> invoke(Dio client) async {
    return client
        .put<Job>(
          '/jobs/$jobId/cancel',
          data: data,
          queryParameters: <String, dynamic>{
            'force': force,
          },
        )
        .then(toData)
        .catchError(handleError);
  }

  @override
  void handleDioError(DioError error) {
    switch (error.response.statusCode) {
      case 400:
        throw const InvalidRequestException();
      case 404:
        throw const ResourceNotFoundException();
      case 503:
        throw const ServiceUnavailableException();
      case 429:
        throw const ThrottlingException();
    }
  }
}
