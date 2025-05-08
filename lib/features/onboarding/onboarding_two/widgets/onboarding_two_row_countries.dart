

import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/images.dart';
import '../onboarding_two_screen.dart';

class OnboardingTwoRowCountries extends StatelessWidget {
  const OnboardingTwoRowCountries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingTwoColumnFlagWithWord(text: 'مصر', image: ImagesManager.egypt,),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'السعودية', image: ImagesManager.sudia,),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'الفلبين', image:  ImagesManager.falbin,),
      ],
    );
  }
}