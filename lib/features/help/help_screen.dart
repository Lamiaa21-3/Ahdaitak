import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/help/widgets/help_main_container.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child: ListView(
        children: [
          CustomAppbar(text: 'المساعدة'),
          verticalSpace(13),
          HelpMainContainer(),
        ],
      )),
    );
  }
}
