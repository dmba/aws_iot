part of 'package:aws_iot/src/exception/exception.dart';

class LimitExceededException extends AwsIotException {
  const LimitExceededException()
      : super(
          410,
          'A limit has been exceeded.',
        );
}
