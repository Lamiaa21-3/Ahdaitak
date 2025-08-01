import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBeforeLoginRowWords extends StatelessWidget {
  const HomeBeforeLoginRowWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 8.h),
      child: Row(
        children: [
          Text('الميداليات', style: StylesManager.font15MorePurpleBold),
          Spacer(),
          Text(
            'شاهد الكل',
            style: StylesManager.font12DarkPurpleRegular.copyWith(
              color: ColorManager.pink,
            ),
          ),
        ],
      ),
    );
  }
}
