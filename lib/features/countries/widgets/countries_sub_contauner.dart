

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class CountriesSubContainer extends StatelessWidget {
  const CountriesSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0.h),
      child: Container(
        width: 200.w,
        height: 37.h,
        decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // shadow color
              spreadRadius: 1, // how much the shadow spreads
              blurRadius: .5, // how blurry the shadow is
              offset: Offset(0, 1), // changes position of shadow (x, y)
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: ColorManager.borderGrey),
        ),
        child: Center(
          child: Text(
            'الى اين تريد ارسال البطاقة ؟',
            style: StylesManager.font16MorePurpleMedium,
          ),
        ),
      ),
    );
  }
}
