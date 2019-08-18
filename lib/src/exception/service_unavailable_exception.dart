part of 'package:aws_iot/src/exception/exception.dart';

class ServiceUnavailableException extends AwsIotException {
  const ServiceUnavailableException()
      : super(
          503,
          'The service is temporarily unavailable.',
        );
}
