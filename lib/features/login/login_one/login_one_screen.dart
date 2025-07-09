import 'package:ahdydic/core/helper/spacing.dart';

import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/login/login_one/widgets/login_one_appbar.dart';
import 'package:ahdydic/features/login/login_one/widgets/login_one_main_container_item.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginOneScreen extends StatelessWidget {
  const LoginOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                verticalSpace(10),
                LoginOneAppbar(),
                verticalSpace(30),
                Container(
                  height: 700.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: ColorManager.white,
                  ),
                  child: LoginOneMainContainerItem(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
