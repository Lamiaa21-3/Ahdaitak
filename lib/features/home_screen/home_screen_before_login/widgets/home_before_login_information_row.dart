import 'package:flutter/material.dart';


import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/images.dart';
import '../../../../generated/l10n.dart';
import 'home_before_login_item_row.dart';


class HomeBeforeLoginInformationRow extends StatelessWidget {
  const HomeBeforeLoginInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        horizontalSpace(30),
        HomeBeforeLoginItemRow(
          image: ImagesManager.mobilePhone,
          rating: ' م 550',
          text: S.of(context).balanceRecharge,
        ),
        horizontalSpace(45),
        HomeBeforeLoginItemRow(
          image: ImagesManager.person,
          rating: '6.3 م',
          text: S.of(context).messengers,
        ),
        horizontalSpace(45),
        HomeBeforeLoginItemRow(
          image: ImagesManager.countries,
          rating: '+150',
          text: S.of(context).countries,
        ),
      ],
    );
  }
}