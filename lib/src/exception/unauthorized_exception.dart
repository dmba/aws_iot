part of 'package:aws_iot/src/exception/exception.dart';

class UnauthorizedException extends AwsIotException {
  const UnauthorizedException()
      : super(
          401,
          'You are not authorized to perform this operation.',
        );
}
