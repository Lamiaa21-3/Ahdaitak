
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_appbar.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_list_country.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_main_container.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              verticalSpace(20),
              OnboardingTwoAppbar(),

              verticalSpace(60),
              OnboardingTwoMainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}









