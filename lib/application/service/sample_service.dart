import 'dart:developer';

import 'package:my_flutter_project/domain/enum/nutrient_type.dart';
import 'package:my_flutter_project/domain/model/food_entity.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';
import 'package:my_flutter_project/domain/service/calc_food_kcal_service.dart';
import 'package:my_flutter_project/extension/double_extension.dart';

class SampleService {
  final rice = const FoodEntity(
    name: '白米',
    nutrients: [
      NutrientEntity(type: NutrientType.protein, amount: 2.5),
      NutrientEntity(type: NutrientType.fat, amount: 0.3),
      NutrientEntity(type: NutrientType.carbohydrate, amount: 37.1),
    ],
  );

  final natto = const FoodEntity(
    name: '納豆',
    nutrients: [
      NutrientEntity(type: NutrientType.protein, amount: 16.5),
      NutrientEntity(type: NutrientType.fat, amount: 10.0),
      NutrientEntity(type: NutrientType.carbohydrate, amount: 12.1),
    ],
  );

  /// 納豆ご飯のカロリー計算
  double excecute() {
    double totalKcal = 0.0;
    final calcService = CalcFoodKcalService();
    totalKcal += calcService.execute(rice);
    totalKcal += calcService.execute(natto);

    log('Total kcal: $totalKcal');
    return totalKcal.roundToFirstDecimalPlace;
  }
}
