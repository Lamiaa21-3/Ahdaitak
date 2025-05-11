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
import '../../generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Padding(
                  padding:  EdgeInsets.only(right: 300.0.w),
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(Icons.arrow_forward_ios, color: ColorManager.black),
                  ),
                ),

                Text(
                S.of(context).login,
                  style: StylesManager.font30DarkBlue700Weight,
                ),
                Text(
                  S.of(context).sendCodeForVerification,
                  style: StylesManager.font18PinkMedium,
                ),
                RowNumberField(),
                LoginCheckBoxWithText(),
                CustomButton(
                  text:  S.of(context).ensurePhoneNumber,
                  backgroundColor: ColorManager.darkPurple,
                  textStyle: StylesManager.font30White500,
                ),
                verticalSpace(40),
                Row(
                  children: [
                    Container(
                      width:100.w ,
                      height: 1.h,
                      color: ColorManager.lightGrey,
                    ),
                    horizontalSpace(8),
                    Text(
                                   S.of(context).orCompleteBy,
                      style: StylesManager.font23LightGrayRegular,
                    ),
                    horizontalSpace(8),
                    Container(
                      width:100.w ,
                      height: 1.h,
                      color: ColorManager.lightGrey,
                    ),
                  ],
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


