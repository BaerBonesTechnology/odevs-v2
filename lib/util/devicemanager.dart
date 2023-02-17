import 'package:flutter/material.dart';

class DeviceManager {
  DeviceManager(this.context);

  BuildContext context;

  /// check what type of device is being used between windows, android, and iOS
  String getDeviceType() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
        return 'android';
      case TargetPlatform.iOS:
        return 'ios';
      case TargetPlatform.windows:
        return 'windows';
      default:
        return 'unknown';
    }
  }

  bool isWeb() {
    return (Theme.of(context).platform == TargetPlatform.windows ||
        Theme.of(context).platform == TargetPlatform.macOS);
  }
}
