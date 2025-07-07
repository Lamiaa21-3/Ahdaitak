import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/home_screen_before_login/widgets/home_before_login_appbar.dart';
import 'package:ahdydic/features/home_screen_before_login/widgets/home_before_login_main_container.dart';
import 'package:ahdydic/features/home_screen_before_login/widgets/home_before_login_stack_image.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBeforeLogin extends StatelessWidget {
  const HomeScreenBeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(

        child: Padding(
          padding:  EdgeInsets.only(top: 40.0.h),
          child: Container(
            height: 800.h,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: ListView(
              children: [
                Column(
                  children: [HomeBeforeLoginAppbar(), HomeBeforeLoginStackImage(), HomeBeforeLoginMainContainer()],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
