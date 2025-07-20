

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

        margin: const EdgeInsets.all(16),
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'سجل النقاط',
              style: StylesManager.font16MorePurpleRegular.copyWith(
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            verticalSpace(5),
            SizedBox(
              height: 800.h,
              child: ListView.separated(
                itemBuilder: (_, _) {
                  return Container(
                    height: 90.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.borderGrey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        horizontalSpace(12),
                        Container(
                          height: 65,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: ColorManager.borderGrey,
                              width: .5,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImagesManager.starOrder),
                              verticalSpace(5),
                              Text(
                                '+55',
                                style: StylesManager.font16MorePurpleRegular
                                    .copyWith(fontWeight: FontWeightHelper.bold,),
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ميدالية الأرقام المحفوظة',style:  StylesManager.font16MorePurpleMedium,),
                            Text('22 Jun 2025',style:  StylesManager.font14PinkRegular,),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, _) {
                  return verticalSpace(12);
                },
                itemCount: 12,
              ),
            ),
          ],
        ),
      );
    }
  }

