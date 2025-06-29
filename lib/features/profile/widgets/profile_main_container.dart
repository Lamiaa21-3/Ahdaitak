import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/profile/widgets/profile_divider.dart';
import 'package:ahdydic/features/profile/widgets/profile_main_container_item.dart';
import 'package:ahdydic/features/profile/widgets/profile_row_item.dart';
import 'package:ahdydic/features/profile/widgets/profile_sub_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';
import '../../send_recharge/widgets/send_recharge_sub_container.dart';

class ProfileMainContainer extends StatelessWidget {
  const ProfileMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            // height: 610.h,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: ProfileMainContainerItem(),
          ),
          Positioned(
            top: -25.h, // Adjust as needed
            left: 0.w,
            right: 0.w,

            child: ProfileSubContainer(),
          ),
        ],
      ),
    );
  }
}
