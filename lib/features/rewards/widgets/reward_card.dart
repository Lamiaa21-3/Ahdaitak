import 'package:ahdydic/features/rewards/widgets/reward_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../details_medal/widgets/details_medal_grid_view.dart';

class RewardCard extends StatelessWidget {
  final RewardData data;

  const RewardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 233.w,
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
      padding:  EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize:   MainAxisSize.min,
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