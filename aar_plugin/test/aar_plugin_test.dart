import 'package:flutter_test/flutter_test.dart';
import 'package:aar_plugin/aar_plugin.dart';
import 'package:aar_plugin/aar_plugin_platform_interface.dart';
import 'package:aar_plugin/aar_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAarPluginPlatform
    with MockPlatformInterfaceMixin
    implements AarPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AarPluginPlatform initialPlatform = AarPluginPlatform.instance;

  test('$MethodChannelAarPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAarPlugin>());
  });

  test('getPlatformVersion', () async {
    AarPlugin aarPlugin = AarPlugin();
    MockAarPluginPlatform fakePlatform = MockAarPluginPlatform();
    AarPluginPlatform.instance = fakePlatform;

    expect(await aarPlugin.getPlatformVersion(), '42');
  });
}
