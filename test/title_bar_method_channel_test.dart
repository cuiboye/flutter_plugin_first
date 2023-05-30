import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:title_bar/title_bar_method_channel.dart';

void main() {
  MethodChannelTitleBar platform = MethodChannelTitleBar();
  const MethodChannel channel = MethodChannel('title_bar');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
