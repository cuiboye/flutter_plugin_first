import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'title_bar_platform_interface.dart';

/// An implementation of [TitleBarPlatform] that uses method channels.
class MethodChannelTitleBar extends TitleBarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('title_bar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
