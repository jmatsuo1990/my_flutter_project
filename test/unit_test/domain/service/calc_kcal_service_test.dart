import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/domain/enum/nutrient_type.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';
import 'package:my_flutter_project/domain/service/calc_kcal_service.dart';

/// テスト観点
/// - 正常系
///   - 各種栄養素の計算(摂取量*kcal)が正しく行われること
///   - 小数点以下第1位が四捨五入されること
void main() {
  group('CalcKcalService', () {
    final calcKcalService = CalcKcalService();

    test('タンパク質のカロリーを正しく計算されることを確認', () {
      const nutrientEntity = NutrientEntity(
        type: NutrientType.protein,
        amount: 17.123,
      );
      final result = calcKcalService.execute(nutrientEntity);
      expect(result, 68.0);
    });

    test('脂肪のカロリーを正しく計算されることを確認', () {
      const nutrientEntity = NutrientEntity(
        type: NutrientType.fat,
        amount: 13.123,
      );
      final result = calcKcalService.execute(nutrientEntity);
      expect(result, 118.0);
    });

    test('炭水化物のカロリーを正しく計算されることを確認', () {
      const nutrientEntity = NutrientEntity(
        type: NutrientType.carbohydrate,
        amount: 12.123,
      );
      final result = calcKcalService.execute(nutrientEntity);
      expect(result, 48.0);
    });
  });
}
