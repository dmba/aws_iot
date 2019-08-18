part of 'package:aws_iot/src/exception/exception.dart';

class ResourceNotFoundException extends AwsIotException {
  const ResourceNotFoundException()
      : super(
          404,
          'The specified resource does not exist.',
        );
}
