

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class ViewsContactsItemListView extends StatelessWidget {
  const ViewsContactsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 4.0.h,horizontal: 25.w),
      child: GestureDetector(
        onTap: (){
          context.pushNamed(
            Routes.yourOrderScreen
          );
        },
        child: Container(
          height: 90.h,
          decoration: BoxDecoration(
            color: ColorManager.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // shadow color
                spreadRadius: 1, // how much the shadow spreads
                blurRadius: 2, // how blurry the shadow is
                offset: Offset(0, 2), // changes position of shadow (x, y)
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: ColorManager.borderGrey),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Mama', style: StylesManager.font24DarkPurpleRegular),
                    Text('0192938444', style: StylesManager.font14PinkRegular),
                  ],
                ),
                horizontalSpace(10),
                Image.asset(ImagesManager.girle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}