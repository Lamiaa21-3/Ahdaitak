


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';
import 'gifts_drop_down.dart';
import 'gifts_sub_container.dart';

class GiftsMainContainer extends StatefulWidget {
  const GiftsMainContainer({super.key});

  @override
  State<GiftsMainContainer> createState() => _GiftsMainContainerState();
}

class _GiftsMainContainerState extends State<GiftsMainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 476.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          GiftsDropDown(),
          Text(
            S.of(context).couponsEgyptStartFrom,
            style: StylesManager.font20DarkPurpleMedium,
          ),
          verticalSpace(12),
          GiftsSubContainer(),
          verticalSpace(24),
          GiftsSubContainer(),
        ],
      ),
    );
  }
}