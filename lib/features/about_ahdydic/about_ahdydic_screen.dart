


import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/about_ahdydic/widgets/about_ahdydic_main_container.dart';
import 'package:flutter/material.dart';

class AboutAhdydicScreen extends StatelessWidget {
  const AboutAhdydicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [

            CustomAppbar(text: 'عن اهديتك'),
            AboutAhdydicMainContainer(),
          ],
        ),
      ),
    );
  }
}
