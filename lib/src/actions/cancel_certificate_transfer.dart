part of 'package:aws_iot/src/actions/actions.dart';

class CancelCertificateTransfer extends Action<bool> {
  CancelCertificateTransfer(this.certificateId);

  final String certificateId;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .patch<void>(
          '/cancel-certificate-transfer/$certificateId',
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
      case 410:
        throw const TransferAlreadyCompletedException();
      case 401:
        throw const UnauthorizedException();
    }
  }
}
