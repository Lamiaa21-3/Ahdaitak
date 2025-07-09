import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';



class HomeBeforeLoginAppbar extends StatelessWidget {
  const HomeBeforeLoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 36.h),
      child: Row(
        children: [
          Text(
            S.of(context).welcomToAhdidic,
            style: StylesManager.font20DarkPurpleMedium,
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.loginOneScreen);
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Colors.grey, width: 1.w),
                ),
              ),
              textStyle: WidgetStateProperty.all<TextStyle>(
                TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.purple,
                ),
              ),
            ),
            child: Text(S.of(context).login),
          ),
        ],
      ),
    );
  }
}