


import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class ProfileRowItem extends StatelessWidget {
  const ProfileRowItem({super.key, required this.text, required this.widget});


  final String text;
 final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          widget,

          horizontalSpace(7),
          Text(text,style: StylesManager.font20DarkPurpleMedium,),
        ],
      ),
    );
  }
}
