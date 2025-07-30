import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class GooglePayChangeMethod extends StatelessWidget {
  const GooglePayChangeMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: ColorManager.lighterGrey, // lighterGrey
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          children: [
            Image.asset(ImagesManager.googlePay,width: 57.w,height: 30.h,),
            horizontalSpace(20),
            Text('جوجل باي', style: StylesManager.font18MorePopularBold),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'تغيير',
                style: StylesManager.font14PinkRegular,
                ),
              ),

          ],
        ),
      ),
    );
  }
}
