import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/domain/enum/nutrient_type.dart';

/// テスト観点
/// - 正常系
///   - 各栄養素のkcal値が正しく定義されていることを確認
void main() {
  group('NutrientTypeExtension', () {
    test('タンパク質のkcal値は4であることを確認', () {
      expect(NutrientType.protein.kcal, 4);
    });

    test('炭水化物のkcal値は4であることを確認', () {
      expect(NutrientType.carbohydrate.kcal, 4);
    });

    test('脂肪のkcal値は9であることを確認', () {
      expect(NutrientType.fat.kcal, 9);
    });
  });
}
