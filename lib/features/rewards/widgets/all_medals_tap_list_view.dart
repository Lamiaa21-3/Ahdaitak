import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class AllMedalsTapListView extends StatelessWidget {
  const AllMedalsTapListView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (_, _) {
          return Container(
            height: 110.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorManager.white,
              border: Border.all(
                color: ColorManager.borderGrey,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                horizontalSpace(15),
                Image.asset(ImagesManager.medal),
                horizontalSpace(26),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S
                          .of(context)
                          .topUpTheBalanceForSomeoneElse,
                      style:
                      StylesManager
                          .font14MorePurpleMedium,
                    ),
                    verticalSpace(12),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(
                          ColorManager.purple,
                        ),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: WidgetStatePropertyAll(
                          Size(175.w, 31.h),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(10),
                            side: BorderSide(
                              color: ColorManager.pink,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            ImagesManager.rewardStar,
                          ),
                          horizontalSpace(4),
                          Text(
                            S.of(context).Earn25points,
                            style: StylesManager
                                .font14PinkRegular
                                .copyWith(
                              color: ColorManager.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return verticalSpace(4);
        },
      ),
    );
  }
}
