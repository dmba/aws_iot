part of aws_iot.exception;

class TransferAlreadyCompletedException extends AwsIotException {
  const TransferAlreadyCompletedException()
      : super(
          410,
          'You can\'t revert the certificate transfer because the transfer is already complete.',
        );
}
