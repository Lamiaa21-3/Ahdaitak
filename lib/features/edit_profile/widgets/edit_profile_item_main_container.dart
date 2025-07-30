
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';
import 'edit_profile_text_form_field.dart';

class EditProfileItemMainContainer extends StatelessWidget {
  const EditProfileItemMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
