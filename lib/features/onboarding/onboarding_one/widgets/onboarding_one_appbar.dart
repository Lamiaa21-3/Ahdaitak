import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class OnboardingOneAppbar extends StatelessWidget {
  const OnboardingOneAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.0.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 145.w,
          height: 35.h,

          decoration: BoxDecoration(
            color: ColorManager.purple,
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: ColorManager.pink, width: 1),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                   S.of(context).login,
                    style: StylesManager.font18WhiteMedium.copyWith(fontSize: 14.sp),
                  ),
                  SizedBox(width: 6),
                  Icon(
                    Icons.arrow_right,
                    size: 32,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
