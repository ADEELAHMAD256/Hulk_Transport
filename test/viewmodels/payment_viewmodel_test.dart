import 'package:flutter_test/flutter_test.dart';
import 'package:hulk_transport/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PaymentViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
