

import 'package:ahdydic/features/login/login_two/widgets/login_two_appbar.dart';
import 'package:ahdydic/features/login/login_two/widgets/login_two_main_container.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../generated/l10n.dart';


class LoginTwoScreen extends StatelessWidget {
  const LoginTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                verticalSpace(24),
                CustomAppbar(text: S.of(context).login,),
                verticalSpace(30),
                LoginTwoMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
