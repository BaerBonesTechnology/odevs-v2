import 'package:ODevs/firebase_options.dart';
import 'package:ODevs/util/navigation.dart' as nav;
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'util/theme_manager.dart' as theme;

void main() {
  initializeFirebaseApp();
}

/// private instance of the firebase database
void initializeFirebaseApp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    runApp(const MyApp());
  });
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
