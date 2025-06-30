import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_main_container.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class YourOrderScreen extends StatelessWidget {
  const YourOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,

      body: SafeArea(

        child: Column(
          children: [
            verticalSpace(20),
            Text(
              S.of(context).checkYourOrder,
              style: StylesManager.font22WhiteMedium,
            ),
            verticalSpace(40),

            YourOrderMainContainer(),
        
          ],
        ),
      ),
    );
  }
}
