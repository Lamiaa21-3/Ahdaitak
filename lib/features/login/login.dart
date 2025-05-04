import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/row_number_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back, color: ColorManager.black),
            ),

            Padding(
              padding: EdgeInsets.only(left: 70.0.w),
              child: Text(
                'دعنا نسجل دخولك',
                style: StylesManager.font30DarkBlue700Weight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w),
              child: Text(
                'سنرسل لك رمزًا عبر رسالة نصية للتحقق من رقمك',
                style: StylesManager.font23boldBlueBlod,
              ),
            ),
            RowNumberField(),
            LoginCheckBoxWithText(),
          ],
        ),
      ),
    );
  }
}

class LoginCheckBoxWithText extends StatelessWidget {
  const LoginCheckBoxWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

