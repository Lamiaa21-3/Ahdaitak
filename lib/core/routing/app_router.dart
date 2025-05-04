import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/login/login.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginScreen();
          },
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginScreen();
          },
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('No route for ${settings.name}')),
              ),
        );
    }
  }
}
