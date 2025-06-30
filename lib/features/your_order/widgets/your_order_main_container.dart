


import 'package:ahdydic/features/your_order/widgets/your_order_main_container_item.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_sub_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';


class YourOrderMainContainer extends StatelessWidget {
  const YourOrderMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // width: double.infinity,
            // height: 610.h,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: YourOrderMainContainerItem(),
          ),
          Positioned(
            top: -25.h, // Adjust as needed
            left: 0.w,
            right: 0.w,

            child: YourOrderSubContainer(),
          ),
        ],
      ),
    );
  }
}
