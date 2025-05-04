


import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('لا أرغب في تلقي اتصالات تسويقية',style: StylesManager.font23boldBlueBlod,),
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value;
            });
          },
        ),

      ],
    );
  }
}