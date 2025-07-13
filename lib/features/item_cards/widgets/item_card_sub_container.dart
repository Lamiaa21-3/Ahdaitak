import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class ItemCardsSubContainer extends StatefulWidget {
  const ItemCardsSubContainer({super.key});

  @override
  State<ItemCardsSubContainer> createState() => _ItemCardsSubContainerState();
}

class _ItemCardsSubContainerState extends State<ItemCardsSubContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          width: 340.w,
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
            isSelected
                ? Border.all(color: ColorManager.darkPurple, width: 1.5)
                : Border.all(color: ColorManager.grey, width: 1.w),
          ),
          child: Row(
            children: [
              horizontalSpace(20),
              Text('500', style: StylesManager.font24DartPurpleBold),
              horizontalSpace(12),
              Padding(
                padding: EdgeInsets.only(top: 25.0.h),
                child: Image.asset(ImagesManager.sigma),
              ),
              horizontalSpace(30),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    ColorManager.darkPurple,
                  ),
                  // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: WidgetStatePropertyAll(Size(143.w, 30.h)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                child: Text(
                  S.of(context).buy99,
                  style: StylesManager.font18WhiteMedium.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}