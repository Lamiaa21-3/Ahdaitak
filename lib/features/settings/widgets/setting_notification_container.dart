import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingNotificationContainer extends StatefulWidget {
  const SettingNotificationContainer({super.key});

  @override
  State<SettingNotificationContainer> createState() =>
      _SettingNotificationContainerState();
}

class _SettingNotificationContainerState
    extends State<SettingNotificationContainer> {
  bool whatsappEnabled = true;
  bool emailEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,

      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorManager.borderGrey, width: 0.5.w),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // مهم عشان يمنع مشاكل القياس
        children: [
          Text(
            "أخبرني عن خصومات وعروض اهدتك الترويجية ذات الصلة والحصرية خاصةً لي.",
            style: StylesManager.font14MorePurpleMedium,
            textAlign: TextAlign.start,
          ),
          verticalSpace(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        inactiveThumbColor: ColorManager.white,
                        inactiveTrackColor: ColorManager.borderGrey,
                        value: whatsappEnabled,
                        onChanged: (value) {
                          setState(() {
                            whatsappEnabled = value;
                          });
                        },
                        activeColor: ColorManager.white,
                        activeTrackColor: ColorManager.pink,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "الواتساب والرسائل القصيرة",
                        style: StylesManager.font14PinkRegular.copyWith(
                          color: ColorManager.purple,
                        ),
                        overflow: TextOverflow.visible, // يمنع الكسر
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(

                        inactiveThumbColor: ColorManager.white,
                        inactiveTrackColor: ColorManager.borderGrey,
                        value: emailEnabled,
                        onChanged: (value) {
                          setState(() {
                            emailEnabled = value;
                          });
                        },
                        activeColor: ColorManager.white,
                        activeTrackColor: ColorManager.pink,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "البريد الالكتروني",
                        style: StylesManager.font14PinkRegular.copyWith(
                          color: ColorManager.purple,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
