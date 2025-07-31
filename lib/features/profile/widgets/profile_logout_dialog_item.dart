




import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';

class ProfileLogoutDialogItem extends StatelessWidget {
  const ProfileLogoutDialogItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Center(
        child: Text(
          'هل انت متأكد ؟',
          style: StylesManager.font20DarkPurpleMedium.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
      content: Text(
        'من انك تريد تسجيل الخروج من الحساب ؟',
        textAlign: TextAlign.center,
        style: StylesManager.font16MorePurpleMedium,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Column(
          children: [
            CustomButton(
              padding:EdgeInsets.symmetric(horizontal: 15),
              text: 'نعم',
              width: 256,
              height: 37,
              backgroundColor: ColorManager.purple,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            verticalSpace(8),
            CustomButton(
              padding:EdgeInsets.symmetric(horizontal: 15),
              text: 'لا',
              width: 256,
              height: 37,
              backgroundColor: ColorManager.buttonGray,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}
