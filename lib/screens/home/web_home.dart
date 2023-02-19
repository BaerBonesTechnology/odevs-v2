import 'package:ODevs/viewmodels/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../custom/common_ui.dart';
import 'package:ODevs/util/viewmanger.dart';

class WebHome extends StatelessWidget {
  WebHome({super.key});

  final vm = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    ViewManager view = ViewManager(context);

    return ScreenFormat(children: [
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: view.getScreenSize().width,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [heroText(), sponsorArea()],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: view.getScreenSize().width / 3,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                jobBoard(),
              ],
            ),
          ),
          Container(
            width: (view.getScreenSize().width / 3 ) * 2,
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                eventBoard(),
              ],
            ),
          ),
        ])
      ])
    ]);
  }

  Widget heroText() {
    return const Text("Hero Text");
  }

  Widget sponsorArea() {
    return const Text("Sponsor Area");
  }

  Widget jobBoard() {
    return const Text("Job Board");
  }

  Widget eventBoard() {
    return const Text("Event Board");
  }
}
