import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';

class MessageBoxMainContainer extends StatelessWidget {
  const MessageBoxMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorManager.white,
      ),
      child: ListView(
        children: [
          Column(
            children: [
              verticalSpace(40),
              Image.asset(ImagesManager.shecduleBackGround),



              verticalSpace(80),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:ColorManager.lighterGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'احصل على عروض حصرية وتحديثات مهمة وأفضل أسعار إعادة الشحن، كل ذلك في مكان واحد. ستجدها في انتظارك كلما فتحت التطبيق.',
                  style: StylesManager.font14MorePurpleMedium,
                  // textAlign: TextAlign.right,
                  // textDirection: TextDirection.rtl,
                ),
              ),
              verticalSpace(79),
              CustomButton(
                text: 'ارسل الرصيد',
                backgroundColor: ColorManager.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
