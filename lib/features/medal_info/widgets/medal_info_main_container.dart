import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/medal_info/widgets/medal_info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';

import 'medal_info_sub_container.dart';

class MedalInfoMainContainer extends StatelessWidget {
  const MedalInfoMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorManager.white,
      ),
      child: Column(
        children: [
          verticalSpace(30),
          MedalInfoSubContainer(),
          verticalSpace(35),
          MedalInfoContainer(),
          verticalSpace(30),
          CustomButton(
            text: 'اجمع المزيد من الميداليات',
            backgroundColor: ColorManager.purple,
          ),
        ],
      ),
    );
  }
}
