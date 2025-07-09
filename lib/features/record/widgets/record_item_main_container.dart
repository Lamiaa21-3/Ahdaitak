

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';

class RecordItemMainContainer extends StatelessWidget {
  const RecordItemMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace(60),
            Image.asset(ImagesManager.recordBackground),
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
    );
  }
}
