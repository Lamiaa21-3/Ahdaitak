import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class MedalInfoContainer extends StatelessWidget {
  const MedalInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 470.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // لون الظل
            spreadRadius: 2, // مدى الانتشار
            blurRadius: 5, // مدى التمويه
            offset: Offset(2, 3), // تحريك الظل (أفقي, رأسي)
          ),
        ],
        border: Border.all(color: ColorManager.borderGrey, width: 1),
      ),
      child: Column(
        children: [
          verticalSpace(50),
          Image.asset(
            ImagesManager.goldMedal,
            width: 185,
            height: 185,
            fit: BoxFit.fill,
          ),
          verticalSpace(20),
          Text(
            'ارقام محفوظة',
            style: StylesManager.font26MorePurpleMedium,
          ),
          verticalSpace(20),
          Text(
            'تم جمعها في 5 يوليو 2025',
            style: StylesManager.font16MorePurpleRegular.copyWith(
              color: ColorManager.pink,
            ),
          ),
          verticalSpace(20),
          Text(
            textAlign: TextAlign.center,
            'لقد قمت بإضافة رقم هاتفك الى التطبيق لذلك حصلت على هذه الميدالية',
            style: StylesManager.font18LightGrayRegular.copyWith(
              color: ColorManager.purple,
            ),
          ),

        ],
      ),
    );
  }
}
