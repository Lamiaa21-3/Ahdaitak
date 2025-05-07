
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';
import 'font_weight_helper.dart';

class StylesManager {
  ////////////////////////////
  static TextStyle font30DarkBlue700Weight = TextStyle(
    fontSize: 30.sp,
    color: ColorManager.teal,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14DarkPurpleBold = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkPurple,
    fontWeight: FontWeightHelper.bold,
  );

////////////////////////////
  static TextStyle font23boldBlueBlod = TextStyle(
    fontSize: 18.sp,
    color: ColorManager.boldBlue,
    fontWeight: FontWeightHelper.bold,
  );



  static TextStyle font22boldBlueBlod = TextStyle(
    fontSize: 18.sp,
    color: ColorManager.boldBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14DartBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.teal,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font22DartPurpleRegular = TextStyle(
    fontSize: 22.sp,
    color: Color(0xff3E6970),
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24DartPurpleBold = TextStyle(
    fontSize: 24.sp,
    color: ColorManager.darkPurple,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font30White500 =  TextStyle(
    fontSize: 30.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
///////////////////////////
  static TextStyle font23LightGrayRegular =  TextStyle(
    fontSize: 23.sp,
    color: ColorManager.grey,
    fontWeight: FontWeightHelper.medium,
  );
  ///////////////////////////////
  static TextStyle font30DarkGreenRegular =  TextStyle(
    fontSize: 30.sp,
    color: ColorManager.darkGreen,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font17LightGrayRegular = TextStyle(
    fontSize: 15.sp,
    color: ColorManager.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24DarkPurpleRegular = TextStyle(
    fontSize: 24.sp,
    color: ColorManager.darkPurple,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font42DarkPurpleRegular = TextStyle(
    fontSize: 42.sp,
    color: ColorManager.darkPurple,
    fontWeight: FontWeightHelper.medium,
  );

}
