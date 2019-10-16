part of aws_iot.exception;

class ValidationException implements Exception {
  const ValidationException(this.message);

  final String message;

  @override
  String toString() {
    return '$runtimeType: $message';
  }
}
