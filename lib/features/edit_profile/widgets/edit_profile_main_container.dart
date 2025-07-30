import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import 'edit_profile_sub_container.dart';
import 'edit_profile_text_form_field.dart';

class EditProfileMainContainer extends StatelessWidget {
  const EditProfileMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 700.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: ColorManager.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(120),
                Text(
                  'الاسم',
                  style: StylesManager.font14PinkRegular.copyWith(
                    color: ColorManager.purple,
                  ),
                ),
                verticalSpace(5),
                EditProfileTextFormField(
                  hintText: 'Enas Omar',
                  validator: (v) {},
                ),
                verticalSpace(30),
                Text(
                  'تاريخ الميلاد',
                  style: StylesManager.font14PinkRegular.copyWith(
                    color: ColorManager.purple,
                  ),
                ),
                verticalSpace(5),
                EditProfileTextFormField(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.date_range_outlined),
                  ),
                  hintText: '',
                  validator: (v) {},
                ),
                verticalSpace(30),
                Text(
                  'رقم الهاتف',
                  style: StylesManager.font14PinkRegular.copyWith(
                    color: ColorManager.purple,
                  ),
                ),
                verticalSpace(5),
                EditProfileTextFormField(
                  hintText: '01146574880',
                  validator: (v) {},
                ),
                verticalSpace(30),
                Text(
                  'البريد الالكتروني',
                  style: StylesManager.font14PinkRegular.copyWith(
                    color: ColorManager.purple,
                  ),
                ),
                verticalSpace(5),
                EditProfileTextFormField(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'enas256@gmail.com',
                  validator: (v) {},
                ),
                verticalSpace(50),
                CustomButton(
                  text: 'حفظ',
                  backgroundColor: ColorManager.purple,
                  width: 341.w,
                  height: 43.h,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -25.h, // Adjust as needed
          left: 130.w,
          right: 130.w,

          child: EditProfileSubContainer(),
        ),
      ],
    );
  }
}
