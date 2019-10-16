part of aws_iot.exception;

class ServiceUnavailableException extends AwsIotException {
  const ServiceUnavailableException()
      : super(
          503,
          'The service is temporarily unavailable.',
        );
}
