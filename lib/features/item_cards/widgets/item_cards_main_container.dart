

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';
import 'item_card_sub_container.dart';

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
        padding: EdgeInsets.only(right: 15.0.w, top: 10.h),
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

            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (_, _) {
                  return ItemCardsSubContainer();
                },
              ),
            ),
            verticalSpace(24),
            // ItemCardsSubContainer(),
            // verticalSpace(24),
            // ItemCardsSubContainer(),
            // verticalSpace(24),
            // ItemCardsSubContainer(),
            // verticalSpace(24),
            // ItemCardsSubContainer(),
          ],
        ),
      ),
    );
  }
}