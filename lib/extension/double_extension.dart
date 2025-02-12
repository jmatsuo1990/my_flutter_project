extension DoubleExtension on double {
  /// 小数点第1位を四捨五入した整数を返す
  double get roundToFirstDecimalPlace => _roundToDecimalPlace(1);

  /// 小数点第2位を四捨五入した小数点第1位までの値を返す
  double get roundToSecondDecimalPlace => _roundToDecimalPlace(10);

  double _roundToDecimalPlace(int value) {
    try {
      return (this * value).round() / value;
    } catch (e) {
      throw RangeError('桁溢れが発生しました');
    }
  }
}
