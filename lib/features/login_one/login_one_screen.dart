import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';

import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';

import 'package:ahdydic/features/login_one/widgets/login_one_row_divider.dart';
import 'package:ahdydic/features/onboarding/onboarding_one/widgets/onboarding_one_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class LoginOneScreen extends StatelessWidget {
  const LoginOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Image.asset(ImagesManager.loginOneBackground),
            verticalSpace(110),
            Text(
              S.of(context).welcomBack,
              style: StylesManager.font24DartPurpleBold,
            ),
            OnboardingOneButton(),
            verticalSpace(12),
            LoginOneRowDivider(),
            InkWell(
              onTap: (){
                context.pushNamed(Routes.loginScreen);
              },
              child: Text(
                S.of(context).completeUsingAnotherMethod,
                style: StylesManager.font18PinkMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
