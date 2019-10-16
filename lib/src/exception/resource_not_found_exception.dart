part of aws_iot.exception;

class ResourceNotFoundException extends AwsIotException {
  const ResourceNotFoundException()
      : super(
          404,
          'The specified resource does not exist.',
        );
}
