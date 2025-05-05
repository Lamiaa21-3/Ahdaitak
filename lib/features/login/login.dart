import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/login/widgets/login_check_box_with_text.dart';
import 'package:ahdydic/features/login/widgets/login_social_row.dart';
import 'package:ahdydic/features/login/widgets/login_texts_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_button.dart';
import '../../core/widgets/row_number_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(Icons.arrow_forward, color: ColorManager.black),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 70.0.w),
                  child: Text(
                    'دعنا نسجل دخولك',
                    style: StylesManager.font30DarkBlue700Weight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.0.w),
                  child: Text(
                    'سنرسل لك رمزًا عبر رسالة نصية للتحقق من رقمك',
                    style: StylesManager.font23boldBlueBlod,
                  ),
                ),
                RowNumberField(),
                LoginCheckBoxWithText(),
                CustomButton(
                  text: 'تأكيد رقم الهاتف',
                  backgroundColor: ColorManager.amber,
                  textStyle: StylesManager.font30DarkGreenRegular,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 120.0.w, top: 24.h),
                  child: Text(
                    'أو الاستمرار مع',
                    style: StylesManager.font23LightGrayRegular,
                  ),
                ),
                verticalSpace(40),

                LoginSocialRow(),
                verticalSpace(35),
                LoginTextsRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


