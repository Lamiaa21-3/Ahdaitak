import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/rewards/widgets/rewaeds_appbar.dart';
import 'package:ahdydic/features/rewards/widgets/rewards_main_container.dart';
import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child:
      ListView(
        children: [
          RewardsAppbar(),
          verticalSpace(22),
          RewardsMainContainer(),
        ],
      ),
      ),
    );
  }
}
