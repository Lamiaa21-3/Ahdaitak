



import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class GiftsSubContainer extends StatelessWidget {
  const GiftsSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 110.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorManager.grey, width: 1.w),
      ),
      child: Row(
        children: [
          Image.asset(ImagesManager.giftBigo),
          horizontalSpace(12),
          SizedBox(
            width: 140,
            child: Text(
              S.of(context).enjoyNonStopEntertainmentBigoLive,
              style: StylesManager.font14MorePurpleMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          horizontalSpace(20),
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ColorManager.purple,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  context.pushNamed(Routes.itemCardsScreen);
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: ColorManager.white,
                  size: 14,
                ),
                padding: EdgeInsets.zero, // 👈 Optional: removes extra padding
                constraints: BoxConstraints(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}