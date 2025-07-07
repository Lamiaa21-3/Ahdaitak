import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';
import '../../onboarding/onboarding_one/widgets/onboarding_one_button.dart';
import 'login_one_row_divider.dart';

class LoginOneMainContainerItem extends StatelessWidget {
  const LoginOneMainContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            verticalSpace(30),
            Image.asset(ImagesManager.loginOneBackground),
            verticalSpace(44),
            Text(
              S.of(context).welcomBack,
              style: StylesManager.font24DartPurpleBold,
            ),
            OnboardingOneButton(),
            verticalSpace(12),
            LoginOneRowDivider(),
            InkWell(
              onTap: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: Text(
                S.of(context).completeUsingAnotherMethod,
                style: StylesManager.font18PinkMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
