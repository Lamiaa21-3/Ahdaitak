

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import 'home_before_login_information_row.dart';
import 'home_before_login_row_images.dart';
import 'home_before_login_stack_image.dart';
import 'home_before_login_sub_container.dart';

class HomeBeforeLoginInfoContainer extends StatelessWidget {
  const HomeBeforeLoginInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 355.w,
          // height: 320.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ColorManager.grey, width: 1.w),
          ),
          child: Column(
            children: [
              verticalSpace(21),

              Text(
                S.of(context).connectingWithPeopleSince,
                style: StylesManager.font14MorePurpleMedium,
              ),
              verticalSpace(29),
              HomeBeforeLoginInformationRow(),
              verticalSpace(37),
              Container(
                width: 332.w,
                height: 1.h,
                color: ColorManager.lightGrey,

              ),
              verticalSpace(16),
              Text(
                S.of(context).trustedByOurPartners,
                style: StylesManager.font14MorePurpleMedium,
              ),
              verticalSpace(16),
              HomeBeforeLoginRowImages(),
            ],
          ),
        );
  }
}







