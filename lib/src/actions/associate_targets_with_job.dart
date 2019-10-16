part of aws_iot.actions;

class AssociateTargetsWithJob extends Action<Job> {
  AssociateTargetsWithJob(this.jobId, this.data);

  final String jobId;
  final Job data;

  @override
  Future<Job> invoke(Dio client) async {
    return client
        .post<Job>(
          '/jobs/$jobId/targets',
          data: data,
        )
        .then(toData)
        .catchError(handleError);
  }

  @override
  void handleDioError(DioError error) {
    switch (error.response.statusCode) {
      case 400:
        throw const InvalidRequestException();
      case 410:
        throw const LimitExceededException();
      case 404:
        throw const ResourceNotFoundException();
      case 503:
        throw const ServiceUnavailableException();
      case 429:
        throw const ThrottlingException();
    }
  }
}
