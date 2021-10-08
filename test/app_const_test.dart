import 'package:coverage_ignore_issue/app_const.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppConst statics only with private default constructor', () {
    test('Test that constant value "name" is as defined', () {
      expect(AppConst.name, 'Demo app');
    });
    test('Test that function hello returns expected result', () {
      expect(AppConst.hello, 'Hello');
    });
  });
}
