import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingLanguageDialog extends StatelessWidget {
  const SettingLanguageDialog(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "اختر لغتك المفضلة",
              style: StylesManager.font20DarkPurpleMedium.copyWith(
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            verticalSpace(12),
            Text(
              "يمكنك تغيير لغة التطبيق من خلال الوصول الى الاعدادات",
              textAlign: TextAlign.center,
              style: StylesManager.font16MorePurpleMedium,
            ),
            verticalSpace(20),
            CustomButton(
              text: 'اذهب للإعدادات',
              backgroundColor: ColorManager.purple,
              height: 37.h,
              onTap: (){},
            ),

            CustomButton(
              text: 'خروج',
              backgroundColor: ColorManager.buttonGray,
              height: 37.h,
              onTap: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
