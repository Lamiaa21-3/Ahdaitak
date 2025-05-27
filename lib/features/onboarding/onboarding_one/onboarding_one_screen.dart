


import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/onboarding/onboarding_one/widgets/onboarding_one_appbar.dart';
import 'package:ahdydic/features/onboarding/onboarding_one/widgets/onboarding_one_column_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/widgets/custom_button.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCFFF8),
      body: SafeArea(

         child:
      ListView(
        children: [
        OnboardingOneAppbar(),
        verticalSpace(40),
        Image.asset(ImagesManager.onboardingOne, height: 300.h, width: 350.w,),
        verticalSpace(50),
        OnboardingOneColumnTexts(),
          verticalSpace(30),

          CustomButton(text: 'التالى', backgroundColor: ColorManager.purple,function: (){
            context.pushNamed(Routes.onBoardingTwoScreen,);
          },),
          verticalSpace(30),
      ],),),
    );
  }


}








