import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingDeleteAccountDialog extends StatelessWidget {
  const SettingDeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 37.h,horizontal: 20.w,),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // العنوان
            Text(
              "حذف الحساب",
              style: StylesManager.font20DarkPurpleMedium.copyWith(
                fontWeight: FontWeightHelper.bold,
              ),
            ),
           verticalSpace(10),
            // النص
             Text(
              "هل انت متأكد من انك تريد حذف الحساب؟",
              style: StylesManager.font16MorePurpleMedium,
               textAlign: TextAlign.center,
             ),
               verticalSpace(10),

            // زر "لا"
           CustomButton(text: 'لا', backgroundColor: ColorManager.purple,height: 37.h,onTap: (){
             context.pop();
           },),


            // زر "نعم"
            CustomButton(text: 'نعم', backgroundColor: ColorManager.buttonGray,height: 37.h,),

          ],
        ),
      ),
    );
  }
}
