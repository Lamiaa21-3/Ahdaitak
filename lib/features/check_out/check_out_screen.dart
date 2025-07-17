import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/check_out/widgets/check_out_appbar.dart';
import 'package:ahdydic/features/check_out/widgets/check_out_main_container.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child: ListView(
        children: [
          CheckOutAppbar(),
          verticalSpace(50),
          CheckOutMainContainer(),
        ],
      )),
    );
  }
}
