import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/settings/widgets/setting_main_container.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child: ListView(
        children: [
          CustomAppbar(text: 'اعدادات الحساب'),
          SettingMainContainer(),
        ],
      )),
    );
  }
}
