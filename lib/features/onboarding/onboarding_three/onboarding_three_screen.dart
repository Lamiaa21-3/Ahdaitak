import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
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
              Positioned(
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
                          text: S.of(context).next,
                          backgroundColor: ColorManager.darkPurple,
                        ),
                        verticalSpace(35),
                        Text(S.of(context).youCanTurnItOffAtAnyTime, style: StylesManager.font18BlackMedium),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OnboardingThreeCheckRow extends StatelessWidget {
  const OnboardingThreeCheckRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.0.w, top: 20.h),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: ColorManager.darkPurple),
          horizontalSpace(15),
          Text(text, style: StylesManager.font18BlackMedium),
        ],
      ),
    );
  }
}
