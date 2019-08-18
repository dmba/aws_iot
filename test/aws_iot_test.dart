import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

final logger = Logger();

FutureOr main() async {
  test('should pass', () {
    expect(true, isTrue);
  });
}
