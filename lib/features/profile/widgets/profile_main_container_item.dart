import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/features/profile/widgets/profile_divider.dart';
import 'package:ahdydic/features/profile/widgets/profile_logout_dialog_item.dart';
import 'package:ahdydic/features/profile/widgets/profile_row_drop_down.dart';
import 'package:ahdydic/features/profile/widgets/profile_row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';

class ProfileMainContainerItem extends StatefulWidget {
  const ProfileMainContainerItem({super.key});

  @override
  State<ProfileMainContainerItem> createState() =>
      _ProfileMainContainerItemState();
}

class _ProfileMainContainerItemState extends State<ProfileMainContainerItem> {
  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => ProfileLogoutDialogItem()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              verticalSpace(70),

              ProfileRowDropDown(),
              //help
              ProfileRowItem(
                onTap: (){
                  context.pushNamed(Routes.helpScreen);
                },
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
              //rewards
              ProfileRowItem(
                onTap: () {
                  context.pushNamed(Routes.rewardsScreen);
                },
                text: S.of(context).rewards,
                widget: Image.asset(ImagesManager.rewards),
              ),

              ProfileDivider(),
              //determineSendingDates
              ProfileRowItem(
                onTap: () {
                  context.pushNamed(Routes.automaticChargingOperationsScreen);
                },
                text: S.of(context).determineSendingDates,
                widget: Image.asset(ImagesManager.arrowRight),
              ),
              ProfileDivider(),
              //paymentMethods
              ProfileRowItem(
                text: S.of(context).paymentMethods,
                widget: Image.asset(ImagesManager.paymentMethod),
              ),
              ProfileDivider(),
              //messageBox
              ProfileRowItem(
                onTap: () {
                  context.pushNamed(Routes.messageBoxScreen);
                },
                text: S.of(context).messageBox,
                widget: Image.asset(ImagesManager.messageBox),
              ),
              ProfileDivider(),
              ProfileRowItem(
                text: S.of(context).settings,
                widget: Image.asset(ImagesManager.settings),
              ),
              ProfileDivider(),
              ProfileRowItem(
                onTap: () {
                  context.pushNamed(Routes.aboutAhdydicScreen);
                },
                text: S.of(context).aboutAhdytic,
                widget: Image.asset(ImagesManager.about),
              ),
              ProfileDivider(),
              verticalSpace(20),
              GestureDetector(
                onTap: (){
                  context.pushNamed(Routes.termsAndConditionsScreen);
                },
                child: Text(
                  S.of(context).termsAndConditions,
                  style: StylesManager.font14MorePurpleMedium,
                ),
              ),
              verticalSpace(9),
              Text(
                S.of(context).privacyNotificationToFriendsFamily,
                style: StylesManager.font14MorePurpleMedium,
              ),
              verticalSpace(9),
              GestureDetector(
                onTap: (){
                  context.pushNamed(Routes.privacyScreen);
                },
                child: Text(
                  S.of(context).privacyPolicy,
                  style: StylesManager.font14MorePurpleMedium,
                ),
              ),
              verticalSpace(22),
              CustomButton(
                height: 43.h,
                width: 341.w,
                onTap: () {
                  showLogoutDialog(context);
                },
                text: S.of(context).logout,
                backgroundColor: ColorManager.darkPurple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
