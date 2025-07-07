import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import 'onboarding_three_check_row.dart';

class OnboardingThreeMainContainer extends StatelessWidget {
  const OnboardingThreeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 13.0),
          child: Container(
            width: 350.w,
            height: 410.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorManager.white,
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    verticalSpace(37),

                    OnboardingThreeCheckRow(
                      text: S.of(context).statusUpdatesOperations,
                    ),
                    OnboardingThreeCheckRow(
                      text: S.of(context).exclusiveOffersAndDiscounts,
                    ),
                    OnboardingThreeCheckRow(
                      text: S.of(context).newAndExcitingProducts,
                    ),
                    verticalSpace(30),

                    CustomButton(
                      function: () {
                        context.pushNamed(Routes.loginOneScreen);
                      },
                      text: S.of(context).next,
                      backgroundColor: ColorManager.purple,
                    ),
                    verticalSpace(25),
                    Text(
                      S.of(context).youCanTurnItOffAtAnyTime,
                      style: StylesManager.font18BlackMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 390.h,
          left: 30.w,
          right: 30.w,
          child: Container(
            height: 35.h,
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
                S.of(context).stayInformed,
                style: StylesManager.font18WhiteMedium.copyWith(
                  color: ColorManager.morePurple,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
