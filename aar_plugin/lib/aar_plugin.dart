
import 'aar_plugin_platform_interface.dart';

class AarPlugin {
  Future<String?> getPlatformVersion() {
    return AarPluginPlatform.instance.getPlatformVersion();
  }
}
