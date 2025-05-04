
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';
import 'font_weight_helper.dart';

class StylesManager {
  ////////////////////////////
  static TextStyle font30DarkBlue700Weight = TextStyle(
    fontSize: 30.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeight.w700,
  );

////////////////////////////
  static TextStyle font23boldBlueBlod = TextStyle(
    fontSize: 18.sp,
    color: ColorManager.boldBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14DartBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );


  static TextStyle font16White500 = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
///////////////////////////
  static TextStyle font23LightGrayRegular = const TextStyle(
    fontSize: 23,
    color: ColorManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );
  ///////////////////////////////
  static TextStyle font30DarkGreenRegular = const TextStyle(
    fontSize: 30,
    color: ColorManager.darkGreen,
    fontWeight: FontWeightHelper.regular,
  );
}
