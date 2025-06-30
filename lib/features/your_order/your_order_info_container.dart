import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/font_weight_helper.dart';
import '../../core/theming/styles.dart';

class YourOrderInfoContainer extends StatelessWidget {
  const YourOrderInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: ColorManager.grey, width: 1.w),
      ),
      elevation: 4,
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
                const Icon(Icons.expand_less),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text('134 ', style: StylesManager.font18MorePopularBold),
                Text(
                  ' جنيه',
                  style: StylesManager.font18MorePopularBold.copyWith(
                    fontWeight: FontWeightHelper.regular,
                  ),
                ),
                const Spacer(),
                 Text(
                  'Enas Omar',
                  style:StylesManager.font18MorePopularBold,
                ),


              ],
            ),
            // Details
            _buildRow("لقد ارسلت", "191.43 جنيه"),
            _buildRow("ضرائب الدولة", "- 57.43 جنيه"),
            _buildRow("سوف يتم استلام", "134 جنيه"),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 14)),
          // Text(
          //   value,
          //   style:  StylesManager.
          // ),
        ],
      ),
    );
  }
}
