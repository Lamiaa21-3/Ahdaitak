


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class LoginTwoTextsRow extends StatelessWidget {
  const LoginTwoTextsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).withContinueYouAgree,
              style: StylesManager.font17LightGrayRegular,
            ),
            Text(
              S.of(context).termsAndConditions,
              style: StylesManager.font18PinkMedium,
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).privacyPolicy,
              style: StylesManager.font18PinkMedium,
            ),
            Text(
                ' و ',
                style: StylesManager.font17LightGrayRegular
            ),
            Text(
              S.of(context).cookies,
              style: StylesManager.font18PinkMedium,
            ),

          ],
        ),
      ],
    );
  }
}