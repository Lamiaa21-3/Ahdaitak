import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import 'check_out_main_container_item.dart';
import 'check_out_sub_container.dart';

class CheckOutMainContainer extends StatelessWidget {
  const CheckOutMainContainer({super.key});

  @override

  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 770.h,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: CheckOutMainContainerItem(),
        ),
        Positioned(
          top: -25.h, // Adjust as needed
          left: 0.w,
          right: 0.w,

          child: CheckOutSubContainer(),
        ),
      ],
    );
  }
}
