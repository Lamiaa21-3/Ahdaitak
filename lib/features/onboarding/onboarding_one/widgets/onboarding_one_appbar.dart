

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';


class OnboardingOneAppbar extends StatelessWidget {
  const OnboardingOneAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: ColorManager.darkPurple),
        ),
        InkWell(

            onTap: (){
              context.pushNamed(Routes.loginScreen);
            },
            child: Text('تسجيل الدخول', style: StylesManager.font24DarkPurpleRegular)),

      ],
    );
  }
}