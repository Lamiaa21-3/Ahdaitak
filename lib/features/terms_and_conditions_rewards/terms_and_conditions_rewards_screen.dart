import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/terms_and_conditions_rewards/widgets/terms_and_conditions_rewards_main_container.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_appbar.dart';

class TermsAndConditionsRewardsScreen extends StatelessWidget {
  const TermsAndConditionsRewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: ListView(
        children: [
          CustomAppbar(text: 'الشروط والأحكام',),
          TermsAndConditionsRewardsMainContainer(),
        ],
      ),
    );
  }
}
