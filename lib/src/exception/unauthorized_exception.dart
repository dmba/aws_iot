part of aws_iot.exception;

class UnauthorizedException extends AwsIotException {
  const UnauthorizedException()
      : super(
          401,
          'You are not authorized to perform this operation.',
        );
}
