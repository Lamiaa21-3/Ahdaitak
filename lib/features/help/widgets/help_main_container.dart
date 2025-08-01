import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_form_field.dart';
import 'help_expanded_container.dart';
import 'helper_text_form_field.dart';

class HelpMainContainer extends StatelessWidget {
  const HelpMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,

      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 22.h),
        child: ListView(
          children: [
            Column(
              children: [
                HelperTextFormField(),
                verticalSpace(23),
                HelpExpandedContainer(text: 'كيف استطيع استخدام اهديتك ؟'),
                HelpExpandedContainer(text: 'هل يمكنكم المساعدة ! لدي مشكلة '),
                HelpExpandedContainer(text: 'الميزات الخاصة بي'),
                verticalSpace(8),
                Text(
                  'المقالات المرشحة',
                  style: StylesManager.font14DarkerGreySemiBold.copyWith(
                    color: ColorManager.purple,
                  ),

                ),
                verticalSpace(8),
                HelpExpandedContainer(text: 'بطاقة الهدايا الخاصة بي لا تعمل'),
                HelpExpandedContainer(text: 'كيف يمكن التواصل معنا'),
                HelpExpandedContainer(text: 'مشاكل خاصة بالدفع'),
                HelpExpandedContainer(text: 'مشكلة في ارسال الرصيد'),
                HelpExpandedContainer(text: 'نادي الهدايا الخاص بنا'),
                HelpExpandedContainer(text: 'كيف يمكنك دعوة صديق'),
                verticalSpace(50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
