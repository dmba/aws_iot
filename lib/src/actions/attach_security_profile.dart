part of 'package:aws_iot/src/actions/actions.dart';

class AttachSecurityProfile extends Action<bool> {
  AttachSecurityProfile(
    this.securityProfileName,
    this.securityProfileTargetArn,
  );

  final String securityProfileName;
  final String securityProfileTargetArn;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .put<void>(
          '/security-profiles/$securityProfileName/targets',
          queryParameters: <String, dynamic>{
            'securityProfileTargetArn': securityProfileTargetArn,
          },
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
      case 429:
        throw const ThrottlingException();
      case 409:
        throw const VersionConflictException();
    }
  }
}
