part of 'package:aws_iot/src/exception/exception.dart';

class ThrottlingException extends AwsIotException {
  const ThrottlingException()
      : super(
          429,
          'The rate exceeds the limit.',
        );
}
