import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class CheckOutDetailsContainer extends StatelessWidget {
  const CheckOutDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorManager.grey, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            _buildRow(
              S.of(context).totalAmount,
              '500 ريال سعودي',
              StylesManager.font16MorePurpleMedium,
            ),
            Divider(),
            verticalSpace(12),
            _buildRow(
              S.of(context).Isent,
              '500 ريال سعودي',
              StylesManager.font12MorePurpleMedium,
            ),
            _buildRow(
              S.of(context).stateTaxes,
              '500 ريال سعودي',
              StylesManager.font12MorePurpleMedium,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildRow(String title, String value, TextStyle textStyle) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: textStyle),
        Text(
          value,
          style: StylesManager.font12MorePurpleMedium.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ],
    ),
  );
}
