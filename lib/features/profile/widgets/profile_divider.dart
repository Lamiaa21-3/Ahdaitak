


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Divider(
      height: 1,
      color: ColorManager.lighterGrey,
      endIndent: 20.w,
      indent: 20.w,
    );
  }
}
