

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/app_router.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/images.dart';

import 'onboarding_two_column_flag_with_word.dart';

class OnboardingTwoRowCountries extends StatelessWidget {
  const OnboardingTwoRowCountries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: (){
              context.pushNamed(Routes.onBoardingThreeScreen);
            },

            child: OnboardingTwoColumnFlagWithWord(text: 'مصر', image: ImagesManager.egypt,)),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'السعودية', image: ImagesManager.sudia,),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'الفلبين', image:  ImagesManager.falbin,),
      ],
    );
  }
}