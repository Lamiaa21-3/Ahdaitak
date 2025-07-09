import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/login_two/widgets/login_two_appbar.dart';
import 'package:ahdydic/features/login_two/widgets/login_two_check_box_with_text.dart';
import 'package:ahdydic/features/login_two/widgets/login_two_main_container.dart';
import 'package:ahdydic/features/login_two/widgets/login_two_social_row.dart';
import 'package:ahdydic/features/login_two/widgets/login_two_texts_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_button.dart';
import '../../core/widgets/row_number_field.dart';
import '../../generated/l10n.dart';

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
                LoginTwoAppbar(),
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
