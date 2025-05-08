import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/onboarding/onboarding_three/widgets/onboarding_three_check_row.dart';
import 'package:ahdydic/features/onboarding/onboarding_three/widgets/onboarding_three_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                ImagesManager.onboardingThree,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 812.h,
              ),
              OnboardingThreeMainContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

