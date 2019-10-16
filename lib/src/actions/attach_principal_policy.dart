part of aws_iot.actions;

class AttachPrincipalPolicy extends Action<bool> {
  AttachPrincipalPolicy(this.policyName, this.principal);

  final String policyName;
  final String principal;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .put<void>(
          '/principal-policies/$policyName',
          options: Options(
            headers: <String, dynamic>{
              'x-amzn-iot-principal': principal,
            },
          ),
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
