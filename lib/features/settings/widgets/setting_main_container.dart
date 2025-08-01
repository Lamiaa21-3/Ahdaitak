import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/settings/widgets/setting_delete_account_dialog.dart';
import 'package:ahdydic/features/settings/widgets/setting_expanded_container.dart';
import 'package:ahdydic/features/settings/widgets/setting_notification_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingMainContainer extends StatelessWidget {
  const SettingMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingLanguageContainer(),
            verticalSpace(24),
            SettingNotificationContainer(),
            verticalSpace(30),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) =>  SettingDeleteAccountDialog(),
                );

              },
              child: Text('حذف الحساب', style: StylesManager.font14RedBold),
            ),
            verticalSpace(12),
            Divider(color: ColorManager.dividerGray, height: 1.h),
            verticalSpace(8),
            Text(
              'سيؤدي اختيار حذف الحساب إلى رفع طلب لإغلاق حساب اهديتك الخاص بك ومحو جميع البيانات الشخصية المرتبطة به. قد تستغرق معالجة طلبك ما يصل إلى شهر واحد',
              style: StylesManager.font12DarkPurpleRegular,
            ),
          ],
        ),
      ),
    );
  }
}
