


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';



class HomeBeforeLoginStackImage extends StatelessWidget {
  const HomeBeforeLoginStackImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImagesManager.loginThreeStack,    height: 250.h,),
        Positioned(
          top: 45.h,
          right: 35.w,
          child: SizedBox(
            width: 160.w,
            child: Text(
              S.of(context).sendFirstShipmentToEgypt,
              style: StylesManager.font18WhiteMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
        Positioned(
          top: 130.h,
          right: 60.w,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(ColorManager.purple),
              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: WidgetStatePropertyAll(
                BorderSide(color: ColorManager.pink, width: 1),
              ),
              minimumSize: WidgetStatePropertyAll(Size(124.w, 34.h)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
              ),
            ),
            child: Text(
              S.of(context).startRechargingTheBalance,
              style: StylesManager.font12WhiteRegular,
            ),
          ),
        ),
      ],
    );
  }
}