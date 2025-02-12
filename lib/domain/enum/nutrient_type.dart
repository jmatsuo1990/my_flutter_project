/// 栄養素の種類
enum NutrientType {
  /// タンパク質
  protein,

  /// 炭水化物
  carbohydrate,

  /// 脂肪
  fat,
}

extension NutrientTypeExtension on NutrientType {
  /// 1gに含まれるkcalを返す
  double get kcal {
    switch (this) {
      case NutrientType.protein:
      case NutrientType.carbohydrate:
        return 4;
      case NutrientType.fat:
        return 9;
    }
  }
}
