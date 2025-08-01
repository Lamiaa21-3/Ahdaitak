import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_appbar.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_list_view_horizontal.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_info_container.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_main_container.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_row_words.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_stack_image.dart';
import 'package:ahdydic/features/home_screen/home_screen_before_login/widgets/home_before_login_sub_container.dart';

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
          padding:  EdgeInsets.only(top: 35.0.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              HomeBeforeLoginMainContainer(),
          Positioned(
            top: -22.h, // Adjust as needed
            left: 23.w,
            right: 23.w,

            child: HomeBeforeLoginSubContainer(),
          ),
          ]
          ),
        ),
      ),
    );
  }
}
