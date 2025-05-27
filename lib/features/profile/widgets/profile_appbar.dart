import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: ColorManager.white, size: 24),
        ),
        Text(S.of(context).account, style: StylesManager.font18WhiteMedium),
      ],
    );
  }
}
