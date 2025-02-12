import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/extension/double_extension.dart';

/// テスト観点
/// - 正常系
///   - 小数点第一位を丸めることを確認
///   - 小数点第二位を丸めることを確認
/// - 境界値
void main() {
  group('DoubleExtension', () {
    test('roundToFirstDecimalPlaceは小数点第一位を丸めることを確認', () {
      expect(1.54.roundToFirstDecimalPlace, 2.0);
      expect(1.45.roundToFirstDecimalPlace, 1.0);
      expect(0.0.roundToFirstDecimalPlace, 0.0);
      expect((-1.45).roundToFirstDecimalPlace, -1.0);
      expect((-1.54).roundToFirstDecimalPlace, -2.0);
    });

    test('roundToSecondDecimalPlaceは小数点第二位を丸めることを確認', () {
      expect(1.45.roundToSecondDecimalPlace, 1.5);
      expect(1.44.roundToSecondDecimalPlace, 1.4);
      expect(0.0.roundToSecondDecimalPlace, 0.0);
      expect((-1.44).roundToSecondDecimalPlace, -1.4);
      expect((-1.45).roundToSecondDecimalPlace, -1.5);
    });

    test('doubleの最大値を超える場合、UnsupportedErrorがスローされることを確認', () {
      expect(() => double.infinity.roundToFirstDecimalPlace, throwsRangeError);
      expect(() => double.infinity.roundToSecondDecimalPlace, throwsRangeError);
    });
  });
}
