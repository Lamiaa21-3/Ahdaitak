

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';


import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/row_number_field.dart';
import '../../../../generated/l10n.dart';
import 'login_two_check_box_with_text.dart';
import 'login_two_row_divider.dart';
import 'login_two_social_row.dart';
import 'login_two_texts_row.dart';

class LoginTwoItemMainContainer extends StatelessWidget {
  const LoginTwoItemMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace(60),
            Text(
              S.of(context).login,
              style: StylesManager.font26MorePurpleMedium
                  .copyWith(fontWeight: FontWeightHelper.bold),
            ),
            verticalSpace(10),
            Text(
              S.of(context).sendCodeForVerification,
              style: StylesManager.font18PinkMedium,
            ),
            verticalSpace(55),
            RowNumberField(),
            LoginTwoCheckBoxWithText(),
            CustomButton(
              function: () {
                context.pushNamed(Routes.homeScreen);
              },
              text: S.of(context).ensurePhoneNumber,
              backgroundColor: ColorManager.purple,
              textStyle: StylesManager.font20DarkPurpleMedium
                  .copyWith(color: ColorManager.white),
            ),
            verticalSpace(40),
            LoginTwoRowDivider(),

            verticalSpace(24),

            LoginTwoSocialRow(),
            verticalSpace(22),
            LoginTwoTextsRow(),
            // verticalSpace(40),
          ],
        ),
      ],
    );
  }
}
