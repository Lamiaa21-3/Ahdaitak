


import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class OnboardingTwoColumnFlagWithWord extends StatelessWidget {
  const OnboardingTwoColumnFlagWithWord({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(11),
        Text(text,style: StylesManager.font22DartPurpleRegular,)
      ],
    );
  }
}