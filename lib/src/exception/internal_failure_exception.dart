part of 'package:aws_iot/src/exception/exception.dart';

class InternalFailureException extends AwsIotException {
  const InternalFailureException()
      : super(
          500,
          'An unexpected error has occurred.',
        );
}
