import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';
import 'package:my_flutter_project/domain/enum/nutrient_type.dart';

/// テスト観点
/// - 正常系
///   - 小数第1位 (小数第2位を四捨五入)が返却されることを確認
void main() {
  group('NutrientEntity', () {
    test('小数第1位 (小数第2位を四捨五入)が返却されることを確認', () {
      const nutrient = NutrientEntity(
        type: NutrientType.protein,
        amount: 10.25,
      );
      expect(nutrient.roundAmount, 10.3);
    });
  });
}
