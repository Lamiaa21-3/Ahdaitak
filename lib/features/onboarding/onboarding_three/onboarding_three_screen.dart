
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';

import 'package:ahdydic/features/onboarding/onboarding_three/widgets/onboarding_three_main_container.dart';
import 'package:flutter/material.dart';



class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
        
        
                children: [
                  verticalSpace(30),
                  Image.asset(
                    ImagesManager.onboardingThree,
                  ),
                  verticalSpace(20),
                  OnboardingThreeMainContainer(),
                ],
              ),
      ),
        
    );
  }
}

