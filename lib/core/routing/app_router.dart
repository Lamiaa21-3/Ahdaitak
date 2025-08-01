import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/about_ahdydic/about_ahdydic_screen.dart';
import 'package:ahdydic/features/edit_profile/edit_profile_screen.dart';
import 'package:ahdydic/features/help/help_screen.dart';
import 'package:ahdydic/features/privacy/privacy_screen.dart';
import 'package:ahdydic/features/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:flutter/material.dart';

import '../../features/automatic_charging_operations/automatic_charging_operations_screen.dart';
import '../../features/card_payment_screen/card_payment_screen.dart';
import '../../features/check_out/check_out_screen.dart';
import '../../features/contacts/contacts_screen.dart';
import '../../features/countries/countries_screen.dart';
import '../../features/details_medal/details_medal_screen.dart';
import '../../features/google_pay_screen/google_pay_screen.dart';
import '../../features/item_cards/item_cards_screen.dart';
import '../../features/login/login_one/login_one_screen.dart';
import '../../features/login/login_two/login_two_screen.dart';
import '../../features/main_screen.dart';
import '../../features/medal_info/medal_info_screen.dart';
import '../../features/message_box/message_box_screen.dart';
import '../../features/modify_organizer/modify_organizer_screen.dart';
import '../../features/onboarding/onboarding_one/onboarding_one_screen.dart';
import '../../features/onboarding/onboarding_three/onboarding_three_screen.dart';
import '../../features/onboarding/onboarding_two/onboarding_two_screen.dart';
import '../../features/rewards/rewards_screen.dart';
import '../../features/send_contacts/send_contacts_screen.dart';
import '../../features/send_recharge/send_recharge_screen.dart';
import '../../features/settings/setting_screen.dart';
import '../../features/shipping_schedule/shipping_schedule_screen.dart';
import '../../features/terms_and_conditions_rewards/terms_and_conditions_rewards_screen.dart';
import '../../features/unusual_payment_card/unusual_payment_card_screen.dart';
import '../../features/view_contacts/view_contacts_screen.dart';
import '../../features/your_order/your_order_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingOneScreen:
        return MaterialPageRoute(builder: (_) => OnboardingOneScreen());

      case Routes.modifyOrganizerScreen:
        return MaterialPageRoute(builder: (_) => ModifyOrganizerScreen());

      case Routes.cardPaymentScreen:
        return MaterialPageRoute(builder: (_) => CardPaymentScreen());

      case Routes.onBoardingTwoScreen:
        return MaterialPageRoute(builder: (_) => OnboardingTwoScreen());

      case Routes.yourOrderScreen:
        return MaterialPageRoute(builder: (_) => YourOrderScreen());

      case Routes.onBoardingThreeScreen:
        return MaterialPageRoute(builder: (_) => OnboardingThreeScreen());

      case Routes.loginTwoScreen:
        return MaterialPageRoute(builder: (_) => LoginTwoScreen());

      case Routes.loginOneScreen:
        return MaterialPageRoute(builder: (_) => LoginOneScreen());

      case Routes.sendRechargeScreen:
        return MaterialPageRoute(builder: (_) => SendRechargeScreen());

      case Routes.itemCardsScreen:
        return MaterialPageRoute(builder: (_) => ItemCardsScreen());

      case Routes.sendContracts:
        return MaterialPageRoute(builder: (_) => SendContactsScreen());

      case Routes.contactsScreen:
        return MaterialPageRoute(builder: (_) => ContactsScreen());

      case Routes.viewContactsScreen:
        return MaterialPageRoute(builder: (_) => ViewContactsScreen());

      case Routes.countriesScreen:
        return MaterialPageRoute(builder: (_) => CountriesScreen());

      case Routes.checkOutScreen:
        return MaterialPageRoute(builder: (_) => CheckOutScreen());

      case Routes.rewardsScreen:
        return MaterialPageRoute(builder: (_) => RewardsScreen());

      case Routes.detailsMedalScreen:
        return MaterialPageRoute(builder: (_) => DetailsMedalScreen());

      case Routes.medalInfoScreen:
        return MaterialPageRoute(builder: (_) => MedalInfoScreen());

      case Routes.messageBoxScreen:
        return MaterialPageRoute(builder: (_) => MessageBoxScreen());

      case Routes.automaticChargingOperationsScreen:
        return MaterialPageRoute(builder: (_) => AutomaticChargingOperationsScreen());

      case Routes.googlePayScreen:
        return MaterialPageRoute(builder: (_) => GooglePayScreen());

      case Routes.shippingScheduleScreen:
        return MaterialPageRoute(builder: (_) => ShippingScheduleScreen());
      case Routes.aboutAhdydicScreen:
        return MaterialPageRoute(builder: (_) => AboutAhdydicScreen());
      case Routes.termsAndConditionsRewardsScreen:
        return MaterialPageRoute(builder: (_) => TermsAndConditionsRewardsScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());
      case Routes.termsAndConditionsScreen:
        return MaterialPageRoute(builder: (_) => TermsAndConditionsScreen());
      case Routes.helpScreen:
        return MaterialPageRoute(builder: (_) => HelpScreen());
      case Routes.privacyScreen:
        return MaterialPageRoute(builder: (_) => PrivacyScreen());
        //SettingScreen
      case Routes.settingScreen:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case Routes.unusualPaymentCardScreen:
        return MaterialPageRoute(builder: (_) => UnusualPaymentCardScreen());
    // دمج الحالات المكررة التي تعرض MainScreen
      case Routes.homeScreen:
      case Routes.topUpScreen:
      case Routes.profileScreen:
      case Routes.accountScreen:
      case Routes.recordScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route for ${settings.name}')),
          ),
        );
    }
  }
}
