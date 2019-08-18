part of 'package:aws_iot/src/actions/actions.dart';

class AttachPolicy extends Action<bool> {
  AttachPolicy(this.policyName, this.data);

  final String policyName;
  final AttachPolicyRequest data;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .put<void>(
          '/target-policies/$policyName',
          data: data,
        )
        .then(isSuccess)
        .catchError(handleError);
  }

  @override
  void handleDioError(DioError error) {
    switch (error.response.statusCode) {
      case 500:
        throw const InternalFailureException();
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
      case 401:
        throw const UnauthorizedException();
    }
  }
}
