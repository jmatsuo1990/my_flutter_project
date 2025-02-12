import 'package:my_flutter_project/domain/model/food_entity.dart';
import 'package:my_flutter_project/domain/service/calc_kcal_service.dart';
import 'package:my_flutter_project/extension/double_extension.dart';

/// 食材のカロリーを計算するサービス
class CalcFoodKcalService {
  /// 食材からカロリーを計算する
  ///
  /// @param entity 食材のentity
  /// @return 少数第1位を四捨五入した総カロリー(kcal)
  double execute(FoodEntity entity) {
    if (entity.nutrients.isEmpty) return 0.0;

    if (entity.nutrients.map((e) => e.type).toSet().length != entity.nutrients.length) {
      throw ArgumentError('栄養素が重複しています');
    }

    double kcal = 0.0;
    var calcKcalService = CalcKcalService();
    for (var nutrient in entity.nutrients) {
      kcal += calcKcalService.execute(nutrient);
    }
    return kcal.roundToFirstDecimalPlace;
  }
}
