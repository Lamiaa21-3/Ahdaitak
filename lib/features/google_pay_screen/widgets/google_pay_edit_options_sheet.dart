
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';

class c extends StatelessWidget {
  const GooglePayEditOptionsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 5,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: ColorManager.lighterGrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          _buildBottomSheetItem(context, 'تعديل رقم الهاتف',),
          _buildBottomSheetItem(context, 'تعديل المنظم', ),
          _buildBottomSheetItem(context, 'تعديل الكمية', ),
        ],
      ),
    );
  }

  Widget _buildBottomSheetItem(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        // هنا تقدر تروّح لأي صفحة تعديل حسب الزرار

      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 3,),
        decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: StylesManager.font16MorePurpleMedium,
        ),
      ),
    );
  }
}
