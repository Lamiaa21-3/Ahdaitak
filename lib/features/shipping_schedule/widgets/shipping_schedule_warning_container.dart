
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ShippingScheduleWarningContainer extends StatelessWidget {
  const ShippingScheduleWarningContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:ColorManager.lighterGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Icon(
            Icons.warning,
            color: ColorManager.purple,// لون الأيقونة البنفسجي الغامق
            size: 26,
          ),
         horizontalSpace(8),
          Expanded(
            child: Text(
              'بالنسبة للشحن التلقائي الدولي، قد يختلف المبلغ الذي تدفعه مقابل الشحن في كل تاريخ دفع وفقًا لأسعار الصرف الأجنبي',
              style: StylesManager.font14MorePurpleMedium,
              // textAlign: TextAlign.right,
              // textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
