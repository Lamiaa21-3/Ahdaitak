import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowItWorkSubContainer extends StatelessWidget {
  const HowItWorkSubContainer({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 350.w,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.borderGrey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          horizontalSpace(12),
          Container(
            width: 60,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: ColorManager.borderGrey, width: .5),
            ),
            child: Center(child: Image.asset(image,width: 40,height: 40,)),
          ),
          horizontalSpace(12),
          SizedBox(
            width: 200.w,
            child: Text(
              text,
              style: StylesManager.font14MorePurpleMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
