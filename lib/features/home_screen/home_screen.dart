

import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/home_screen/widgets/home_appbar.dart';
import 'package:ahdydic/features/home_screen/widgets/home_main_container.dart';
import 'package:ahdydic/features/home_screen/widgets/home_stack_image.dart';


import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              children: [
                HomeAppbar(),

                HomeStackImage(),
                HomeMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


