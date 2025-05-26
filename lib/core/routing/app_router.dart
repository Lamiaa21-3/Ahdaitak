import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/contacts/contacts_screen.dart';

import 'package:ahdydic/features/login/login.dart';
import 'package:ahdydic/features/login_one/login_one_screen.dart';
import 'package:ahdydic/features/login_three/home_screen.dart';
import 'package:ahdydic/features/main_screen.dart';
import 'package:ahdydic/features/onboarding/onboarding_three/onboarding_three_screen.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/onboarding_two_screen.dart';
import 'package:ahdydic/features/send_contacts/send_contacts_screen.dart';

import 'package:ahdydic/features/view_contacts/view_contacts_screen.dart';

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
      case Routes.loginOneScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginOneScreen();
          },
        );
      // case Routes.loginThreeScreen:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) {
      //       // return LoginThreeScreen();
      //     },
      //   );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return MainScreen();
          },
        );
      case Routes.topUpScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return MainScreen();
          },
        );
      case Routes.sendContracts:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return SendContactsScreen();
          },
        );
      case Routes.contactsScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  ContactsScreen();
          },
        );
      case Routes.viewContactsScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  ViewContactsScreen();
          },
        );
      case Routes.accountScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  MainScreen();
          },
        );
      case Routes.recordScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  MainScreen();
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
