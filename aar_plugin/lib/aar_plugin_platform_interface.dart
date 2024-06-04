import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'aar_plugin_method_channel.dart';

abstract class AarPluginPlatform extends PlatformInterface {
  /// Constructs a AarPluginPlatform.
  AarPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AarPluginPlatform _instance = MethodChannelAarPlugin();

  /// The default instance of [AarPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAarPlugin].
  static AarPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AarPluginPlatform] when
  /// they register themselves.
  static set instance(AarPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
