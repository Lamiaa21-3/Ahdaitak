import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';

class YourOrderInfoContainer extends StatelessWidget {
  const YourOrderInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
                Image.asset(ImagesManager.amazon),

              ],
            ),
            verticalSpace(10),
            Divider(),
            verticalSpace(10),
            Row(
              children: [
                Text(
                  '500 ريال سعودي ',
                  style: StylesManager.font12MorePurpleMedium,
                ),

                const Spacer(),
                Text(
                  'Amazon',
                  style: StylesManager.font16MorePurpleMedium.copyWith(
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ],
            ),
            // Details
            // _buildRow("لقد ارسلت", "191.43 جنيه"),
            // _buildRow("ضرائب الدولة", "- 57.43 جنيه"),
            // _buildRow("سوف يتم استلام", "134 جنيه"),
          ],
        ),
      ),
    );
  }


}
