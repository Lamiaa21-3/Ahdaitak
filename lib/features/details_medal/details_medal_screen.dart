

import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/details_medal/widgets/details_medal_appbar.dart';
import 'package:ahdydic/features/details_medal/widgets/details_medal_main_container.dart';
import 'package:flutter/material.dart';

class DetailsMedalScreen extends StatelessWidget {
  const DetailsMedalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorManager.purple,
      body: ListView(
        children: [
DetailsMedalAppbar(),
          DetailsMedalMainContainer(),
        ],
      ),
    );
  }
}
