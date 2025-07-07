import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class OnboardingTwoAppbar extends StatelessWidget {
  const OnboardingTwoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(ImagesManager.onboardingTwo),
        Spacer(),
        Padding(
          padding:  EdgeInsets.only(left: 15.0.w,),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 95.w,
              height: 35.h,

              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: ColorManager.pink, width: 1),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    context.pushNamed(Routes.homeScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      horizontalSpace(10),
                      Text(
                        S.of(context).skip,
                        style: StylesManager.font14MorePurpleMedium.copyWith(
                          color: ColorManager.purple,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_right, size: 32, color:ColorManager.purple),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
