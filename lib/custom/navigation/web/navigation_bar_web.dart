import 'package:ODevs/util/theme_manager.dart' as theme;
import 'package:flutter/material.dart';

import 'package:ODevs/custom/common_ui.dart';
import 'package:ODevs/util/navigation.dart' as nav;

class ODNavBarWeb extends StatelessWidget {
  ODNavBarWeb({super.key});
  List<Widget> navLinks = [];

  ///TODO: this will show a feed if the user is logged in
  bool showFeed = false;

  @override
  Widget build(BuildContext context) {
    for (var element in nav.navLinkList.entries) {
      if(element.key != 'Feed' && showFeed == false) {
        navLinks.add(TextButton(
          onPressed: () => Navigator.pushNamed(context, element.value),
          child: Text(
            element.key,
            style: const TextStyle(
                color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ));
      } else {
        navLinks.add(TextButton(onPressed: () => Navigator.pushNamed(context, element.value),
            child: Text(
              element.key,
              style: const TextStyle(
                  color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
        ));
      }

    }

    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [theme.primaryFocus, theme.primary])),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  HomeScreenLogo(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: navLinks,
                ),
                ),
                const SizedBox(
                  width: 50.0,
                  )
            ],
          ),
        ));
  }
}
