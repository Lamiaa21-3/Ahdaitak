


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/styles.dart';


class HomeBeforeLoginSubContainer extends StatelessWidget {
  const HomeBeforeLoginSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 160.w,
      height: 45.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow color
            spreadRadius: 1, // how much the shadow spreads
            blurRadius: 2, // how blurry the shadow is
            offset: Offset(0, 5), // changes position of shadow (x, y)
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: ColorManager.borderGrey),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 7.0.w,vertical: 6.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagesManager.homeNotification),
        Spacer(),
            Text('55',style: StylesManager.font24DartPurpleBold,),
            horizontalSpace(10),
            Image.asset(ImagesManager.starOrder),
          ],
        ),
      ),
    );
  }
}
