import 'dart:ui';

import 'package:ODevs/custom/navigation/web/navigation_bar_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'mobile/navigation_bar_mobile.dart';
import 'package:ODevs/util/devicemanager.dart';

class ODNavBar extends StatelessWidget {
  const ODNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceManager(context).isWeb()
        ? ODNavBarWeb()
        : const ODNavBarMobile();
  }
}