

import 'package:ahdydic/features/rewards/widgets/reward_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import 'home_before_login_list_view_horizontal.dart';


class HomeBeforeLoginRewardCard extends StatelessWidget {
  final HomeRewardData data;

  const HomeBeforeLoginRewardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:4.0.w),
      child: Container(
        height: 200.h,
        width: 142.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorManager.borderGrey, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(data.image, width: 60, height: 60),

            Text(
              data.title,
              style: StylesManager.font18PinkMedium.copyWith(
                color: ColorManager.purple,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              data.date,
              style: StylesManager.font12WhiteRegular.copyWith(
                color: ColorManager.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}