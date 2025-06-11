

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

import 'onboarding_two_list_country.dart';
import 'onboarding_two_row_countries.dart';
import 'onboarding_two_text_form_field.dart';

class OnboardingTwoMainContainer extends StatelessWidget {
  const OnboardingTwoMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460.h,
      decoration: BoxDecoration(
        color:ColorManager.white ,

      ),
      child: Column(
        children: [
          verticalSpace(23),
          Text('البلدان الشعبية',style: StylesManager.font24DartPurpleBold,),
          verticalSpace(23),
          OnboardingTwoRowCountries(),
          OnboardingTwoTextFormField(),
          Padding(
            padding:  EdgeInsets.only(left: 270.0.w),
            child: Text('جميع البلدان',style: StylesManager.font14DarkPurpleBold,),
          ),



          OnboardingTwoListCountry(),
        ],
      ),
    );
  }
}