


import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/features/profile/widgets/profile_main_container.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xff846C8E),
      body: SafeArea(
        child: ListView(

          children: [
            Column(
              children: [
                ProfileAppbar(),
                verticalSpace(30),
                ProfileMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
