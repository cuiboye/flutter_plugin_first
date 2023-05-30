
import 'title_bar_platform_interface.dart';

class TitleBar {
  Future<String?> getPlatformVersion() {
    return TitleBarPlatform.instance.getPlatformVersion();
  }
}
