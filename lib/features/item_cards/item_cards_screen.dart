import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class ItemCardsScreen extends StatelessWidget {
  const ItemCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff846C8E),
      body: ListView(
        children: [
          Column(

            children: [
              verticalSpace(60),
              Image.asset(ImagesManager.amazon),
              ItemCardsMainContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemCardsMainContainer extends StatelessWidget {
  const ItemCardsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 606.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.only(right: 15.0.w,top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).amazon,
              style: StylesManager.font20DarkPurpleMedium,
            ),

            Text(
              S.of(context).WhetherToCelebrateImportantEventDigitalGift,
              style: StylesManager.font16MorePurpleRegular,
            ),
            verticalSpace(24),
            ItemCardsSubContainer(),
            verticalSpace(24),
            ItemCardsSubContainer(),
            verticalSpace(24),
            ItemCardsSubContainer(),
            verticalSpace(24),
            ItemCardsSubContainer(),

          ],
        ),
      ),
    );
  }
}


class ItemCardsSubContainer extends StatelessWidget {
  const ItemCardsSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color:ColorManager.darkPurple ,width: 2.w,)
      ),
      child: Row(
        children: [

          horizontalSpace(20),
          Text('500',style: StylesManager.font24DartPurpleBold,),
          horizontalSpace(12),
          Padding(
            padding:  EdgeInsets.only(top: 25.0.h),
            child: Image.asset(ImagesManager.sigma),
          ),
          horizontalSpace(30),
          TextButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor:  WidgetStatePropertyAll(ColorManager.darkPurple),
              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:  WidgetStatePropertyAll(Size(143.w, 30.h)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
              ),
            ),
            child:
            Text(S.of(context).buy99, style:StylesManager.font18WhiteMedium.copyWith(fontSize: 14.sp) ),


          ),
        ],
      ),
    );
  }
}
