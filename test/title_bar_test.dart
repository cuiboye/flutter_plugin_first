import 'package:flutter_test/flutter_test.dart';
import 'package:title_bar/title_bar.dart';
import 'package:title_bar/title_bar_platform_interface.dart';
import 'package:title_bar/title_bar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTitleBarPlatform 
    with MockPlatformInterfaceMixin
    implements TitleBarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TitleBarPlatform initialPlatform = TitleBarPlatform.instance;

  test('$MethodChannelTitleBar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTitleBar>());
  });

  test('getPlatformVersion', () async {
    TitleBar titleBarPlugin = TitleBar();
    MockTitleBarPlatform fakePlatform = MockTitleBarPlatform();
    TitleBarPlatform.instance = fakePlatform;
  
    expect(await titleBarPlugin.getPlatformVersion(), '42');
  });
}
