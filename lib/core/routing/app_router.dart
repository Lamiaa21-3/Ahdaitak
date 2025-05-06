import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/login/login.dart';
import 'package:ahdydic/features/onboarding/onboarding_three/onboarding_three_screen.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/onboarding_two_screen.dart';

import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_one/onboarding_one_screen.dart';


class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingOneScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  OnboardingOneScreen();
          },
        );
      case Routes.onBoardingTwoScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  OnboardingTwoScreen();
          },
        );
      case Routes.onBoardingThreeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  OnboardingThreeScreen();
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
