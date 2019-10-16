part of aws_iot.exception;

class ThrottlingException extends AwsIotException {
  const ThrottlingException()
      : super(
          429,
          'The rate exceeds the limit.',
        );
}
