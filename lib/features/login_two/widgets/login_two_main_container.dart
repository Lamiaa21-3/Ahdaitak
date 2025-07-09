

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/theming/color.dart';

import 'login_two_item_main_container.dart';


class LoginTwoMainContainer extends StatelessWidget {
  const LoginTwoMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 740.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child:LoginTwoItemMainContainer(),
    );
  }
}
