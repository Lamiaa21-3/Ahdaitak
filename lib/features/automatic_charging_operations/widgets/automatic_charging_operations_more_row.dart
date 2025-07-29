
import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class AutomaticChargingOperationsMoreRow extends StatelessWidget {
  const AutomaticChargingOperationsMoreRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('اكتشف المزيد', style: StylesManager.font14PinkBold),
        IconButton(
          onPressed: () {
            context.pushNamed(Routes.shippingScheduleScreen);
          },
          icon: Icon(Icons.arrow_right, color: ColorManager.pink),
        ),
      ],
    );
  }
}
