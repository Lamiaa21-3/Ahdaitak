import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/edit_profile/widgets/edit_profile_item_main_container.dart';
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
          child: EditProfileItemMainContainer(),
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
