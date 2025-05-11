


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class LoginCheckBoxWithText extends StatefulWidget {
  const LoginCheckBoxWithText({super.key});

  @override
  State<LoginCheckBoxWithText> createState() => _LoginCheckBoxWithTextState();
}

class _LoginCheckBoxWithTextState extends State<LoginCheckBoxWithText> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 10.0.w),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
            value: isChecked,

            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Text('لا أرغب في تلقي اتصالات تسويقية',style: StylesManager.font23boldBlueBlod,),


        ],
      ),
    );
  }
}