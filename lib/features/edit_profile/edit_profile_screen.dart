




import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/edit_profile/widgets/edit_profile_main_container.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child: ListView(
        children: [
          CustomAppbar(text: 'تفاصيل الحساب'),
          verticalSpace(60),
          EditProfileMainContainer(),
        ],
      )),
    );
  }
}
