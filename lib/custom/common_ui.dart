import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../util/devicemanager.dart';
import '../util/viewmanger.dart';
import 'navigation/navigation_bar.dart';
import '../util/theme_manager.dart' as theme;

String logo = 'images/logo.png';
String logoInverted = 'images/logo-inverted.png';


class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.path, required this.text, this.icon});

  final String path;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    /**
     * validate path is a valid url
     */
    bool isValidUrl = Uri.parse(path).isAbsolute;

    return Visibility(
        visible: isValidUrl,
        child: Link(
            uri: Uri.parse(path),
            builder: (context, followLink) => ElevatedButton(
                onPressed: followLink,
                child: Row(
                  children: icon != null ? [
                    Icon(icon),
                    Text(text),
                  ] : [
                    Text(text),
                  ],
                ))));
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.path, required this.text, this.icon});

  final String path;
  final String text;
  final IconData? icon;

  bool isPathValid(String path) {
    return path.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isPathValid(path),
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, path),
          child: Row(
            children: icon != null ? [
              Icon(icon),
              Text(text),
            ] : [
              Text(text),
            ],
          )),
    );
  }
}

class ScreenFormat extends StatelessWidget {
  const ScreenFormat({Key? key, required this.children, this.hideNavOnMobile = false}) : super(key: key);
  final List<Widget> children;
  final bool hideNavOnMobile;

  @override
  Widget build(BuildContext context) {
    ViewManager view = ViewManager(context);
    DeviceManager device = DeviceManager(context);

    return Scaffold(
      appBar: device.isWeb() ? const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: ODNavBar(),
      ) : hideNavOnMobile ? null /*TODO: add app bar with back button */: null,
      backgroundColor: theme.primaryContent,
      body: Container(
        width: view
            .getScreenSize()
            .width,
        height: view
            .getScreenSize()
            .height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
      bottomNavigationBar: device.isWeb() && !hideNavOnMobile ? null : const ODNavBar(),
    );
  }
}

class HomeScreenLogo extends StatelessWidget {
  const HomeScreenLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Logo(size: const Size(50.0, 50.0)),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RichText(
                  text: const TextSpan(
                    text: 'Orlando ',
                    style: TextStyle(
                        color: theme.base100,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                    children: [
                      TextSpan(
                          text: 'Devs', style: TextStyle(color: theme.secondary))
                    ],
                  ),
                ),
              ),
            ])));
  }
}

class Logo extends StatelessWidget {
  Logo({super.key, this.size});

  Size? size;

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(logo),
        width: size != null ? size!.width : 20.0,
        height: size != null ? size!.height : 20.0);
  }
}

class LogoInverted extends StatelessWidget {
  const LogoInverted({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(logoInverted);
  }
}
