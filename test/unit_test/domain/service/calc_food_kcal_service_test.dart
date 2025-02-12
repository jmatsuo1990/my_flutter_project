import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/domain/enum/nutrient_type.dart';
import 'package:my_flutter_project/domain/model/food_entity.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';
import 'package:my_flutter_project/domain/service/calc_food_kcal_service.dart';

/// テスト観点
/// - 正常系
///   - 総カロリーが正しく計算されていることを確認
/// - 異常系
///  - 栄養素がない食品の場合、0.0を返されることを確認
///  - 重複した栄養素がある場合、例外をスローされることを確認
///  - 非常に大きな数値を扱う場合、桁溢れが発生しないことを確認
void main() {
  group('CalcFoodKcalService', () {
    test('総カロリーが正しく計算されていることを確認', () {
      // 準備
      const foodEntity = FoodEntity(
        name: 'food',
        nutrients: [
          NutrientEntity(type: NutrientType.protein, amount: 10.0),
          NutrientEntity(type: NutrientType.fat, amount: 5.0),
          NutrientEntity(type: NutrientType.carbohydrate, amount: 20.0),
        ],
      );

      // 実行
      var result = CalcFoodKcalService().execute(foodEntity);

      // 検証
      expect(result, 165.0);
    });

    test('栄養素がない食品の場合、0.0を返されることを確認', () {
      // 準備
      const foodEntity = FoodEntity(name: '', nutrients: []);

      // 実行
      var result = CalcFoodKcalService().execute(foodEntity);

      // 検証
      expect(result, 0.0);
    });

    test('重複した栄養素がある場合、例外をスローされることを確認', () {
      // 準備
      const foodEntity = FoodEntity(
        name: 'food',
        nutrients: [
          NutrientEntity(type: NutrientType.protein, amount: 10.0),
          NutrientEntity(type: NutrientType.protein, amount: 5.0),
        ],
      );

      // 実行 & 検証
      expect(() => CalcFoodKcalService().execute(foodEntity), throwsArgumentError);
    });

    test('非常に大きな数値を扱う場合、桁溢れが発生しないことを確認', () {
      // 準備
      const foodEntity = FoodEntity(
        name: 'food',
        nutrients: [
          NutrientEntity(type: NutrientType.protein, amount: 1e10),
          NutrientEntity(type: NutrientType.fat, amount: 1e10),
          NutrientEntity(type: NutrientType.carbohydrate, amount: 1e10),
        ],
      );

      // 実行
      var result = CalcFoodKcalService().execute(foodEntity);

      // 検証
      expect(result, isNotNaN);
    });
  });
}
