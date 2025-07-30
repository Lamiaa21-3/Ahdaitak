

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import 'modify_organizer_main_container_item.dart';
import 'modify_organizer_sub_container.dart';

class ModifyOrganizerMainContainer extends StatelessWidget {
  const ModifyOrganizerMainContainer({super.key});

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
          child: ModifyOrganizerMainContainerItem(),
        ),
        Positioned(
          top: -25.h, // Adjust as needed
          left: 0.w,
          right: 0.w,

          child: ModifyOrganizerSubContainer(),
        ),
      ],
    );
  }
}
