








import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class HelperTextFormField extends StatelessWidget {
  const HelperTextFormField({super.key,});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 3.0.w),
      child: TextFormField(
        style: StylesManager.font14DartBlueMedium,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,color: ColorManager.lightGrey,),
          hintText: 'بحث',
          isDense: true,
          // contentPadding: EdgeInsets.symmetric(
          //   horizontal: 18.w,
          //   vertical: 30.h,
          // ),
          contentPadding:

          EdgeInsets.symmetric( vertical: 15.h),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: ColorManager.purple,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: ColorManager.lightGrey,
              width: 1,
            ),
          ),
          hintStyle: StylesManager.font18LightGrayRegular,
          fillColor: ColorManager.moreLightGray,
          filled: true,
        ),
      ),
    );
  }
}