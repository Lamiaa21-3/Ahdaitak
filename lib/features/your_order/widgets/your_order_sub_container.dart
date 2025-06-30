
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../generated/l10n.dart';

class YourOrderSubContainer extends StatelessWidget {
  const YourOrderSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22.0.h),
      child: Container(
        width: 200.w,
        height: 37.h,
        decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // shadow color
              spreadRadius: 1, // how much the shadow spreads
              blurRadius: 2, // how blurry the shadow is
              offset: Offset(0, 5), // changes position of shadow (x, y)
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: ColorManager.borderGrey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagesManager.starOrder),
            horizontalSpace(9),
            Text(S.of(context).youWillGetPoints,style: StylesManager.font14MorePurpleMedium,)
          ],
        ),
      ),
    );
  }
}
