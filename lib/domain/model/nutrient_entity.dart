import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_project/domain/enum/nutrient_type.dart';
import 'package:my_flutter_project/extension/double_extension.dart';

part 'nutrient_entity.freezed.dart';

/// 栄養素のentity
@freezed
class NutrientEntity with _$NutrientEntity {
  const factory NutrientEntity({
    required NutrientType type, // 栄養素の種類
    required double amount, // 摂取量(g)
  }) = _NutrientEntity;
}

extension NutrientEntityExtension on NutrientEntity {
  /// 摂取量(少数第2位)を四捨五入した摂取量(少数第1位まで)を返す
  double get roundAmount => amount.roundToSecondDecimalPlace;
}
