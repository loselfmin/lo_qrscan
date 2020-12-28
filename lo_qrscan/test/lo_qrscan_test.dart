import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lo_qrscan/lo_qrscan.dart';

void main() {
  const MethodChannel channel = MethodChannel('lo_qrscan');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LoQrscan.platformVersion, '42');
  });
}
