
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/automatic_charging_operations/widgets/automatic_charging_operations_main_container.dart';
import 'package:flutter/material.dart';

class AutomaticChargingOperationsScreen extends StatelessWidget {
  const AutomaticChargingOperationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
         CustomAppbar(text: 'عمليات الشحن التلقائي'),
            AutomaticChargingOperationsMainContainer(),
          ],
        ),
      ),
    );
  }
}
