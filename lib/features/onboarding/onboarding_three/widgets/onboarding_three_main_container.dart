

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import 'onboarding_three_check_row.dart';

class OnboardingThreeMainContainer extends StatelessWidget {
  const OnboardingThreeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 370.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Container(
          width: 360.w,
          height: 430.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorManager.white,
          ),
          child: Column(
            children: [
              verticalSpace(37),
              Text(
                S.of(context).stayInformed,
                style: StylesManager.font24DartPurpleBold,
              ),
              OnboardingThreeCheckRow(
                text: S.of(context).statusUpdatesOperations,
              ),
              OnboardingThreeCheckRow(
                text: S.of(context).exclusiveOffersAndDiscounts,
              ),
              OnboardingThreeCheckRow(
                text: S.of(context).newAndExcitingProducts,
              ),
              verticalSpace(40),

              CustomButton(
                function: (){
                  context.pushNamed(Routes.loginOneScreen);
                },
                text: S.of(context).next,
                backgroundColor: ColorManager.darkPurple,
              ),
              verticalSpace(35),
              Text(S.of(context).youCanTurnItOffAtAnyTime, style: StylesManager.font18BlackMedium),
            ],
          ),
        ),
      ),
    );
  }
}
