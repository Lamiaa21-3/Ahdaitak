import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

import '../../../../generated/l10n.dart';
import 'onboarding_two_list_country.dart';
import 'onboarding_two_row_countries.dart';
import 'onboarding_two_text_form_field.dart';

class OnboardingTwoMainContainer extends StatelessWidget {
  const OnboardingTwoMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            width: double.infinity,
            // height: 460.h,
            decoration: BoxDecoration(color: ColorManager.white),
            child: Column(
              children: [
                verticalSpace(33),
                Text(
                 S.of(context).localCountries,
                  style: StylesManager.font24DartPurpleBold,
                ),
                verticalSpace(23),
                OnboardingTwoRowCountries(),
                OnboardingTwoTextFormField(),
                Padding(
                  padding: EdgeInsets.only(left: 270.0.w),
                  child: Text(
                   S.of(context).allCountries,
                    style: StylesManager.font14DarkPurpleBold,
                  ),
                ),

                OnboardingTwoListCountry(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 470,
          left: 20,
          right: 20,
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: ColorManager.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // لون الظل
                  spreadRadius: 1, // مدى انتشار الظل
                  blurRadius: 8, // درجة التمويه
                  offset: Offset(0, 4), // إزاحة الظل (أفقي، عمودي)
                ),
              ],
            ),
            child: Center(
              child: Text(
               S.of(context).whereYouWantSendCharge,
                style: StylesManager.font18MorePopularBold.copyWith(
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
