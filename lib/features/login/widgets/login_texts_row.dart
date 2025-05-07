


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class LoginTextsRow extends StatelessWidget {
  const LoginTextsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 9.0.w
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الشروط والأحكام،',
                style: StylesManager.font17LightGrayRegular.copyWith(
                  color: ColorManager.purple,
                ),
              ),
              Text(
                'من خلال الاستمرار فإنك توافق على شروطنا',
                style: StylesManager.font17LightGrayRegular,
              ),

            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 50.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ' بيان ملفات تعريف الارتباط ',
                style: StylesManager.font17LightGrayRegular.copyWith(
                  color: ColorManager.purple,
                ),
              ),
              Text(
                  ' و ',
                  style: StylesManager.font17LightGrayRegular
              ),
              Text(
                'سياسة الخصوصية',
                style: StylesManager.font17LightGrayRegular.copyWith(
                  color: ColorManager.purple,
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
}