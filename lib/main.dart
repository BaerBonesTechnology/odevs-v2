import 'package:ODevs/util/navigation.dart' as nav;
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'util/theme_manager.dart' as theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: nav.router,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: theme.themeData,
      title: 'Orlando Devs',
    );
  }
}
