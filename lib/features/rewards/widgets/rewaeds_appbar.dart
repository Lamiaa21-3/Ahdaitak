import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class RewardsAppbar extends StatelessWidget {
  const RewardsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: ColorManager.white, size: 20),
        ),
        Text(
          S.of(context).awardsAndRewards,
          style: StylesManager.font18WhiteMedium,
        ),
        Spacer(),
        Text(
          '55',
          style: StylesManager.font18WhiteMedium.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        horizontalSpace(8),
        Image.asset(ImagesManager.rewardStar),
        horizontalSpace(8),
      ],
    );
  }
}
