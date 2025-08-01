import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import 'home_before_login_info_container.dart';
import 'home_before_login_list_view_horizontal.dart';
import 'home_before_login_row_words.dart';
import 'home_before_login_stack_image.dart';

class HomeBeforeLoginMainContainer extends StatelessWidget {
  const HomeBeforeLoginMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      clipBehavior: Clip.none,
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

            children: [
              verticalSpace(20),
              HomeBeforeLoginStackImage(),
              HomeBeforeLoginInfoContainer(),
              HomeBeforeLoginRowWords(),
              SizedBox(
                  height: 150.h,
                  child: HomeBeforeLoginListViewHorizontal()),

              verticalSpace(40),
            ],
          ),
        ],
      ),
    );
  }
}
