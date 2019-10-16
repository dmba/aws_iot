part of aws_iot.exception;

abstract class AwsIotException implements Exception {
  const AwsIotException(this.statusCode, this.message);

  final int statusCode;
  final String message;

  @override
  String toString() {
    return '$runtimeType: [$statusCode] - $message';
  }
}
