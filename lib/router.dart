import 'package:fltr_riverpod/features/home/home_page.dart';
import 'package:fltr_riverpod/features/splash/spalsh_page.dart';
import 'package:flutter/material.dart';

class NavigatorRoutes {
  static const String initial = '/';
  static const String home = '/home';
  static const String splash = '/splash';
}

class Router {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case NavigatorRoutes.initial:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case NavigatorRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case NavigatorRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
    });
  }
}
