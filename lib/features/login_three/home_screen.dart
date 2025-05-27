
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';

import 'package:ahdydic/core/theming/styles.dart';

import 'package:ahdydic/features/login_three/widgets/home_appbar.dart';
import 'package:ahdydic/features/login_three/widgets/home_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              children: [
                HomeAppbar(),

                HomeStackImage(),
                HomeMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeStackImage extends StatelessWidget {
  const HomeStackImage({super.key});

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
