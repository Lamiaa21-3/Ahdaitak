import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';


class LoginOneRowDivider extends StatelessWidget {
  const LoginOneRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        horizontalSpace(20),
        Container(
          width: 130.w,
          height: 1.h,
          color: ColorManager.lightGrey,
        ),
        horizontalSpace(23),
        Text('او',style: StylesManager.font20GreyMedium,),
        horizontalSpace(23),
        Container(
          width: 130.w,
          height: 1.h,
          color: ColorManager.lightGrey,
        ),
      ],
    );
  }
}