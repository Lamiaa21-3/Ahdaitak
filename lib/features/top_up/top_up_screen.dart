import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routing/routes.dart';
import '../../generated/l10n.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 300.0.w),
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                verticalSpace(100),
                Image.asset(ImagesManager.backgroundHome),
                verticalSpace(44),
                Text(
                  S.of(context).thereNoActivities,
                  style: StylesManager.font24DarkPurpleRegular,
                ),
                verticalSpace(24),
                Text(
                  S.of(context).displayHerePeopleYourMessaged,
                  style: StylesManager.font18PinkMedium,
                ),
                verticalSpace(44),
                CustomButton(
                  function: () {
                    context.pushNamed(Routes.sendContracts);
                  },
                  text: S.of(context).startMessaging,
                  backgroundColor: ColorManager.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
