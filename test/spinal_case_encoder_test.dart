import 'package:unittest/unittest.dart';

import 'package:inflection/inflection.dart';

void main() {
  group("The SpinalCaseEncoder", () {
    test("converts phrases to 'spinal-case'", () {
      expect(SPINAL_CASE.convert('CamelCaseName'), equals('camel-case-name'));
      expect(SPINAL_CASE.convert('propertyName'), equals('property-name'));
      expect(SPINAL_CASE.convert('property'), equals('property'));
      expect(SPINAL_CASE.convert('snake_case'), equals('snake-case'));
      expect(SPINAL_CASE.convert(''), equals(''));
    });
  });
}