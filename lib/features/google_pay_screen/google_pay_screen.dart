import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/google_pay_screen/widgets/google_pay_main_container.dart';
import 'package:flutter/material.dart';

import '../../core/theming/styles.dart';
import '../../generated/l10n.dart';

class GooglePayScreen extends StatelessWidget {
  const GooglePayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 300.0),
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: ColorManager.white),
                  ),
                ),
                Text(        S.of(context).paymentDone,
                  style: StylesManager.font18WhiteMedium,),
                verticalSpace(50),
                GooglePayMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
