part of 'package:aws_iot/src/exception/exception.dart';

class InvalidRequestException extends AwsIotException {
  const InvalidRequestException()
      : super(
          400,
          'The request is not valid.',
        );
}
