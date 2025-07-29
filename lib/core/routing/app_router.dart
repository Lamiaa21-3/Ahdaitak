import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/check_out/check_out_screen.dart';
import 'package:ahdydic/features/contacts/contacts_screen.dart';
import 'package:ahdydic/features/countries/countries_screen.dart';
import 'package:ahdydic/features/details_medal/details_medal_screen.dart';
import 'package:ahdydic/features/item_cards/item_cards_screen.dart';




import 'package:ahdydic/features/main_screen.dart';
import 'package:ahdydic/features/medal_info/medal_info_screen.dart';
import 'package:ahdydic/features/onboarding/onboarding_three/onboarding_three_screen.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/onboarding_two_screen.dart';
import 'package:ahdydic/features/rewards/rewards_screen.dart';

import 'package:ahdydic/features/send_contacts/send_contacts_screen.dart';
import 'package:ahdydic/features/send_recharge/send_recharge_screen.dart';
import 'package:ahdydic/features/shipping_schedule/shipping_schedule_screen.dart';
import 'package:ahdydic/features/terms_and_conditions_rewards/terms_and_conditions_rewards_screen.dart';

import 'package:ahdydic/features/view_contacts/view_contacts_screen.dart';
import 'package:ahdydic/features/your_order/your_order_screen.dart';

import 'package:flutter/material.dart';


import '../../features/login/login_one/login_one_screen.dart';
import '../../features/login/login_two/login_two_screen.dart';
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
      case Routes.yourOrderScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  YourOrderScreen();
          },
        );
      case Routes.onBoardingThreeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  OnboardingThreeScreen();
          },
        );

      case Routes.loginTwoScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginTwoScreen();
          },
        );
      case Routes.loginOneScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginOneScreen();
          },
        );




      case Routes.sendRechargeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return SendRechargeScreen();
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
      case Routes.itemCardsScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return ItemCardsScreen();
          },
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return MainScreen(

            );
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
      case Routes.countriesScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  CountriesScreen();
          },
        );
      case Routes.checkOutScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  CheckOutScreen();
          },
        );
      case Routes.rewardsScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  RewardsScreen();
          },
        );
      case Routes.detailsMedalScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  DetailsMedalScreen();
          },
        );
      case Routes.recordScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  MainScreen();
          },
        );

      case Routes.medalInfoScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  MedalInfoScreen();
          },
        );
      case Routes.shippingScheduleScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  ShippingScheduleScreen();
          },
        );
      case Routes.termsAndConditionsRewardsScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return  TermsAndConditionsRewardsScreen();
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
