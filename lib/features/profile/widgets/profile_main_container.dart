import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/profile/widgets/profile_divider.dart';
import 'package:ahdydic/features/profile/widgets/profile_row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class ProfileMainContainer extends StatelessWidget {
  const ProfileMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 604.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(25),
            ProfileRowItem(
              text: S.of(context).help,
              widget: CircleAvatar(
                backgroundColor: Colors.purple[700],
                radius: 12,
                child: Icon(
                  Icons.question_mark,
                  color: ColorManager.white,
                  size: 15,
                ),
              ),
            ),

            ProfileDivider(),

            ProfileRowItem(
              text: S.of(context).SendBalanceRecharge,
              widget: Image.asset(ImagesManager.arrowLeft),
            ),

            ProfileDivider(),
            ProfileRowItem(
              text: S.of(context).receiveBalanceRecharge,
              widget: Image.asset(ImagesManager.arrowRight),
            ),

            // ProfileRowItem(),
            ProfileDivider(),
            ProfileRowItem(
              text: S.of(context).aboutAhdytic,
              widget: Image.asset(ImagesManager.about),
            ),
            ProfileDivider(),
            verticalSpace(29),
            Text(
              S.of(context).termsAndConditions,
              style: StylesManager.font14MorePurpleMedium,
            ),
            verticalSpace(9),
            Text(
              S.of(context).privacyNotificationToFriendsFamily,
              style: StylesManager.font14MorePurpleMedium,
            ),
            verticalSpace(9),
            Text(
              S.of(context).privacyPolicy,
              style: StylesManager.font14MorePurpleMedium,
            ),
            verticalSpace(22),
            CustomButton(
              text: S.of(context).login,
              backgroundColor: ColorManager.darkPurple,
            ),
          ],
        ),
      ),
    );
  }
}
