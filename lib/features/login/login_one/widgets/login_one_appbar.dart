

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';


class LoginOneAppbar extends StatelessWidget {
  const LoginOneAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: ColorManager.white,),
        ),
        Text('التسجيل ',style: StylesManager.font18WhiteMedium,)
      ],
    );
  }
}
