import 'package:ODevs/util/devicemanager.dart';
import 'package:flutter/cupertino.dart';

import 'home/mobile_home.dart';
import 'home/web_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceManager(context).isWeb()
    ? WebHome()
    : const MobileHome();
  }
}
