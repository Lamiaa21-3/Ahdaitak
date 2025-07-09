import 'package:ahdydic/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';



class LoginTwoCheckBoxWithText extends StatefulWidget {
  const LoginTwoCheckBoxWithText({super.key});

  @override
  State<LoginTwoCheckBoxWithText> createState() => _LoginTwoCheckBoxWithText();
}

class _LoginTwoCheckBoxWithText extends State<LoginTwoCheckBoxWithText> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0.w),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
            value: isChecked,
activeColor: ColorManager.morePurple,
focusColor: ColorManager.pink,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Text(
            'لا اريد استلام اعلانات  تسويقية',
            style: StylesManager.font18BlackMedium.copyWith(
              color: ColorManager.morePurple,
            ),
          ),
        ],
      ),
    );
  }
}
