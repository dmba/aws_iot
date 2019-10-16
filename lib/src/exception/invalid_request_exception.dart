part of aws_iot.exception;

class InvalidRequestException extends AwsIotException {
  const InvalidRequestException()
      : super(
          400,
          'The request is not valid.',
        );
}
