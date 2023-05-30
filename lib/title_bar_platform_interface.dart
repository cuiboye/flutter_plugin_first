import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'title_bar_method_channel.dart';

abstract class TitleBarPlatform extends PlatformInterface {
  /// Constructs a TitleBarPlatform.
  TitleBarPlatform() : super(token: _token);

  static final Object _token = Object();

  static TitleBarPlatform _instance = MethodChannelTitleBar();

  /// The default instance of [TitleBarPlatform] to use.
  ///
  /// Defaults to [MethodChannelTitleBar].
  static TitleBarPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TitleBarPlatform] when
  /// they register themselves.
  static set instance(TitleBarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
