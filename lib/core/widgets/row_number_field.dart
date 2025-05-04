import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import 'app_text_form_field.dart';

class RowNumberField extends StatelessWidget {
  const RowNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 100.0.h,right: 23.w,left: 23.w,bottom: 23.h,),
      child: Row(
        children: [

          Expanded(child: AppTextFormField(hintText:'+20',validator: (value){},),),
          Container(
            width: 100.w,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              border: Border.all(color: ColorManager.grey,width: 1,),
            ),
            // child: Image.asset('name'),

          ),
        ],
      ),
    );
  }
}