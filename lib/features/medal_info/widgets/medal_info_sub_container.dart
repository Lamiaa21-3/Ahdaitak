
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class MedalInfoSubContainer extends StatelessWidget {
  const MedalInfoSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 35.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorManager.borderGrey, width: 1),
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // لون الظل
            spreadRadius: 2, // مدى الانتشار
            blurRadius: 5, // مدى التمويه
            offset: Offset(2, 3), // تحريك الظل (أفقي, رأسي)
          ),
        ],
      ),
      child: Center(
        child: Text(
          'الميداليات الخاصة بي',
          style: StylesManager.font16MorePurpleMedium,
        ),
      ),
    );
  }
}
