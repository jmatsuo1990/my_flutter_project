import 'package:my_flutter_project/domain/enum/nutrient_type.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';
import 'package:my_flutter_project/extension/double_extension.dart';

/// カロリーを計算するサービス
class CalcKcalService {
  /// 栄養素からカロリーを計算する
  ///
  /// @param entity 栄養素のentity
  /// @return 少数第1位を四捨五入したカロリー(kcal)
  double execute(NutrientEntity entity) {
    return (entity.roundAmount * entity.type.kcal).roundToFirstDecimalPlace;
  }
}
