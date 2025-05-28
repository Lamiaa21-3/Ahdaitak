

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class SendRechargeSubContainer extends StatelessWidget {
  const SendRechargeSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22.0.h),
      child: Container(
        width: 326.w,
        height: 80.h,
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
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: ColorManager.borderGrey),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text('Mama', style: StylesManager.font16MorePurpleRegular),
                  Flexible(
                      flex: 1,

                      child: Text('0192938444', style: StylesManager.font14PinkRegular)),
                ],
              ),
              horizontalSpace(10),
              Image.asset(ImagesManager.girle),
            ],
          ),
        ),
      ),
    );
  }
}