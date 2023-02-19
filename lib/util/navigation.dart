import 'package:ODevs/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/',
      builder: (BuildContext context, GoRouterState state) => HomeScreen(),
      routes: const [
        //TODO: Add more routes as we develop them
      ])
    ],
  );


  final Map<String, String> navLinkList =
    {'Home': '/',
    'About': '/about',
    'Blog': '/blog',
    'Events': '/events',
    'Feed': '/community-feed',
    'Contact': '/contact'};

