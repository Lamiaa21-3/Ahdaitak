import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/onboarding/widgets/onboarding_appbar.dart';
import 'package:ahdydic/features/onboarding/widgets/onboarding_column_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/images.dart';
import '../../core/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child:
      Column(
        children: [
        OnboardingAppbar(),
        verticalSpace(80),
        Image.asset(ImagesManager.onboarding, height: 300.h, width: 350.w,),
        OnboardingColumnTexts(),
      ],),),
    );
  }


}








