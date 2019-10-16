part of aws_iot.actions;

class AttachThingPrincipal extends Action<bool> {
  AttachThingPrincipal(this.thingName, this.principal);

  final String thingName;
  final String principal;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .patch<void>(
          '/things/$thingName/principals',
          options: Options(
            headers: <String, dynamic>{
              'x-amzn-principal': principal,
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
