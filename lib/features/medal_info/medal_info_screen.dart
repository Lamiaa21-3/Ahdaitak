
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/medal_info/widgets/medal_info_appbar.dart';
import 'package:ahdydic/features/medal_info/widgets/medal_info_main_container.dart';
import 'package:flutter/material.dart';

class MedalInfoScreen extends StatelessWidget {
  const MedalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: ListView(
        children: [
          MedalInfoAppbar(),
          verticalSpace(17),
          MedalInfoMainContainer(),
        ],
      ),
    );
  }
}
