import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_project/domain/model/nutrient_entity.dart';

part 'food_entity.freezed.dart';

/// 食材のentity
@freezed
class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    required String name, // 食材名
    required List<NutrientEntity> nutrients, // 栄養素群
  }) = _FoodEntity;
}
