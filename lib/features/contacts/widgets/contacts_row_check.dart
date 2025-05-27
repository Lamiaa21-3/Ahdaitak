

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class ContactsRowCheck extends StatelessWidget {
  const ContactsRowCheck({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: ColorManager.purple),
          horizontalSpace(15),
          SizedBox(
            width: 310.h,
            child: Text(
              text,
              style: StylesManager.font18BlackMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}