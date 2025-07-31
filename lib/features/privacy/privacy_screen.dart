import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/privacy/widgets/privacy_main_container.dart';
import 'package:ahdydic/features/terms_and_conditions_rewards/widgets/terms_and_conditions_rewards_main_container.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_appbar.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: ListView(
        children: [
          CustomAppbar(text: 'الخصوصية',),
          PrivacyMainContainer(),
        ],
      ),
    );
  }
}
