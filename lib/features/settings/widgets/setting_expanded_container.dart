import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/features/settings/widgets/setting_language_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';

class SettingLanguageContainer extends StatelessWidget {
  const SettingLanguageContainer({super.key, });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      // margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: ColorManager.darkerGrey, width: 1),
      ),
      // elevation: 2,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                'اللغة',
                  style: StylesManager.font14MorePurpleMedium,
                ),

                IconButton(
                  icon: Icon(
                  Icons.arrow_right,
                    color: ColorManager.purple,

                    size: 28,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) =>SettingLanguageDialog(context),
                    );
                  },
                ),

                /// Logo
              ],
            ),


          ],
        ),
      ),
    );
  }
}

