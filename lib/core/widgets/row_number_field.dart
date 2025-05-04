import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import 'app_text_form_field.dart';

class RowNumberField extends StatelessWidget {
  const RowNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 100.0.h,horizontal: 23.w),
      child: Row(
        children: [
          Container(
            width: 100.w,
            height: 83.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              border: Border.all(color: ColorManager.grey,width: 1,),
            ),
            // child: Image.asset('name'),

          ),
          Expanded(child: AppTextFormField(hintText:'+20',validator: (value){},)),
        ],
      ),
    );
  }
}