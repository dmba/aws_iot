part of aws_iot.actions;

class CreateKeysAndCertificate
    extends Action<CreateKeysAndCertificateResponse> {
  CreateKeysAndCertificate(this.setAsActive);

  final bool setAsActive;

  @override
  Future<CreateKeysAndCertificateResponse> invoke(Dio client) async {
    return client
        .post<CreateKeysAndCertificateResponse>(
          '/keys-and-certificate',
          queryParameters: <String, dynamic>{
            'setAsActive': setAsActive,
          },
        )
        .then(toData)
        .catchError(handleError);
  }

  @override
  void handleDioError(DioError error) {
    switch (error.response.statusCode) {
      case 500:
        throw const InternalFailureException();
      case 400:
        throw const InvalidRequestException();
      case 503:
        throw const ServiceUnavailableException();
      case 429:
        throw const ThrottlingException();
      case 401:
        throw const UnauthorizedException();
    }
  }
}
