import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_project/application/service/sample_service.dart';

/// テスト観点
/// - 正常系
void main() {
  group('SampleService', () {
    test('納豆ご飯の総カロリー結果', () {
      expect(SampleService().excecute(), 365.0);

      /// TODO: 要確認
      // expect(SampleService().excecute(), 366.0);
    });
  });
}
