part of aws_iot.exception;

class LimitExceededException extends AwsIotException {
  const LimitExceededException()
      : super(
          410,
          'A limit has been exceeded.',
        );
}
