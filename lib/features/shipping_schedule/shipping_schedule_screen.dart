import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/shipping_schedule/widgets/shipping_schedule_main_container.dart';
import 'package:flutter/material.dart';

class ShippingScheduleScreen extends StatelessWidget {
  const ShippingScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [

            CustomAppbar(text: 'جدولة عمليات الشحن'),
            ShippingScheduleMainContainer(),

          ],
        ),
      ),
    );
  }
}
