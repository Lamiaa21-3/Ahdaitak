
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

class WarningContainer extends StatelessWidget {
  const WarningContainer({super.key, required this.text});
final String text;
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
              text,
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
