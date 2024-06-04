import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'aar_plugin_platform_interface.dart';

/// An implementation of [AarPluginPlatform] that uses method channels.
class MethodChannelAarPlugin extends AarPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('aar_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
