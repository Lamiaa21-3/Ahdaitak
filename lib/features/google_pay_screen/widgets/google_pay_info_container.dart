import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';

class GooglePayInfoContainer extends StatelessWidget {
  const GooglePayInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorManager.grey, width: 1.w),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImagesManager.etsilate),
                Image.asset(ImagesManager.edit,color: ColorManager.darkPurple,),
                

              ],
            ),
             verticalSpace(15),
            Row(
              children: [



                Text(
                  '134 جنية',
                  style: StylesManager.font18MorePopularBold,
                ),
                const Spacer(),
                Text(
                  'Enas Omar',
                  style: StylesManager.font18MorePopularBold,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}
