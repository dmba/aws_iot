part of 'package:aws_iot/src/exception/exception.dart';

class VersionConflictException extends AwsIotException {
  const VersionConflictException()
      : super(
          409,
          'An exception thrown when the version of an entity specified with the expectedVersion parameter does not match the latest version in the system.',
        );
}
