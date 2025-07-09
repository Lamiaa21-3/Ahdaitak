import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';



class LoginTwoRowDivider extends StatelessWidget {
  const LoginTwoRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Expanded(
          child: Divider(color: ColorManager.lightGrey, thickness: 1),
        ),
        horizontalSpace(8),
        Text(
          S.of(context).orCompleteBy,
          style: StylesManager.font23LightGrayRegular,
        ),
        horizontalSpace(8),
        Expanded(
          child: Divider(color: ColorManager.lightGrey, thickness: 1),
        ),
      ],
    );
  }
}
