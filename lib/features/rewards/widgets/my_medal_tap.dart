import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/features/rewards/widgets/reward_grid.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class MyMedalTap extends StatelessWidget {
  const MyMedalTap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        verticalSpace(30),
        Row(
          children: [
            Text(
              S.of(context).medals,
              style: StylesManager.font14DarkPurpleBold,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.detailsMedalScreen);
              },
              child: Text(
                S.of(context).watchAll,
                style: StylesManager.font12MorePurpleMedium
                    .copyWith(color: ColorManager.pink),
              ),
            ),
          ],
        ),
        RewardsGrid(),
      ],
    );
  }
}
