import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/login_three/widgets/login_three_appbar.dart';
import 'package:ahdydic/features/login_three/widgets/login_three_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class LoginThreeScreen extends StatelessWidget {
  const LoginThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LoginThreeAppbar(),

            LoginThreeStackImage(),
            LoginThreeMainContainer(),
          ],
        ),
      ),
    );
  }
}

class LoginThreeStackImage extends StatelessWidget {
  const LoginThreeStackImage({super.key});

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
              backgroundColor: WidgetStatePropertyAll(ColorManager.darkPurple),
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
