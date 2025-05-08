


import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/styles.dart';

class OnboardingTwoAppbar extends StatelessWidget {
  const OnboardingTwoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios,color: ColorManager.white,size: 20,),),
        Padding(
          padding:  EdgeInsets.only(top: 8.0.h),
          child: InkWell(

              onTap: (){
                context.pushNamed(Routes.onBoardingThreeScreen);
              },
              child: Text('تخطى',style: StylesManager.font30White500.copyWith(fontSize: 20),)),
        ),
        horizontalSpace(50),
        Image.asset(ImagesManager.onboardingTwo),
      ],
    );
  }
}