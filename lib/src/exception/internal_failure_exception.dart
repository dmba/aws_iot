part of aws_iot.exception;

class InternalFailureException extends AwsIotException {
  const InternalFailureException()
      : super(
          500,
          'An unexpected error has occurred.',
        );
}
