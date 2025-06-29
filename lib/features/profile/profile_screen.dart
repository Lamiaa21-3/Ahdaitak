


import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/profile/widgets/profile_main_container.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: ColorManager.purple,
        body: SafeArea(
          child: Column(
            children: [
              ProfileAppbar(),
              verticalSpace(20),
              ProfileMainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
