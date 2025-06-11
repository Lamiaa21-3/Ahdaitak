
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class OnboardingTwoTextFormField extends StatelessWidget {
  const OnboardingTwoTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0.w,vertical: 22.0.h),
      child: TextFormField(

        textAlign: TextAlign.right,

        validator: (value) {
          return null;


        },

        style:  StylesManager.font17LightGrayRegular,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_outlined,size: 20,),
          hintText: 'بلد البحث',
          isDense: true,
          contentPadding:
          EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
          focusedBorder:

          OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(
              color: ColorManager.mainBlue,
              width: 1,
            ),
          ),
          errorBorder:

          OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder:

          OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          enabledBorder:

          OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(
              color: ColorManager.grey,
              width: 1,
            ),
          ),
          hintStyle:StylesManager.font23LightGrayRegular,
          fillColor:  ColorManager.moreLightGray,
          filled: true,
        ),
      ),
    );
  }
}
