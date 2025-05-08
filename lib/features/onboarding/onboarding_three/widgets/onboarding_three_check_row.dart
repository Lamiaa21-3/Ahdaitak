import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class OnboardingThreeCheckRow extends StatelessWidget {
  const OnboardingThreeCheckRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.0.w, top: 20.h),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: ColorManager.darkPurple),
          horizontalSpace(15),
          Text(text, style: StylesManager.font18BlackMedium),
        ],
      ),
    );
  }
}
