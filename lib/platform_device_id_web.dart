import 'dart:async';
// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'package:web/web.dart' as web show window;


import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:platform_device_id_platform_interface/platform_device_id_platform_interface.dart';

/// A web implementation of the PlatformDeviceIdWeb plugin.
class PlatformDeviceIdWebPlugin extends PlatformDeviceIdPlatform {
  static void registerWith(Registrar registrar) {
    PlatformDeviceIdPlatform.instance = PlatformDeviceIdWebPlugin();
  }

  /// Returns a [String?] containing the ua of the web.
  @override
  Future<String?> getDeviceId() async {
    return Future.value( web.window.navigator.userAgent);
  }
}
