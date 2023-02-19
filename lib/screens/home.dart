import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom/common_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return const ScreenFormat(children: [
      Text("this is the home screen")
    ]);
  }
}


