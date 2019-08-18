part of 'package:aws_iot/src/exception/exception.dart';

class ValidationException implements Exception {
  const ValidationException(this.message);

  final String message;

  @override
  String toString() {
    return '$runtimeType: $message';
  }
}
