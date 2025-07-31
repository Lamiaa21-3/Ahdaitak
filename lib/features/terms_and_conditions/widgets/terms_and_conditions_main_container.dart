import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsMainContainer extends StatelessWidget {
  const TermsAndConditionsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          children: [
            verticalSpace(14),
            Text(
              'المقدمة',
              style: StylesManager.font14DarkerGreySemiBold,
            ),
            verticalSpace(8),
            Text(
              '  هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
              style: StylesManager.font12DarkPurpleRegular.copyWith(
                color: ColorManager.darkerGrey,
              ),

            ),
            verticalSpace(18),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروفهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
              style: StylesManager.font12DarkPurpleRegular.copyWith(
                color: ColorManager.darkerGrey,
              ),

            ),
            verticalSpace(18),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
              style: StylesManager.font12DarkPurpleRegular.copyWith(
                color: ColorManager.darkerGrey,
              ),

            ),
            verticalSpace(18),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
              style: StylesManager.font12DarkPurpleRegular.copyWith(
                color: ColorManager.darkerGrey,
              ),

            ),
            verticalSpace(18),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروفهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
              style: StylesManager.font12DarkPurpleRegular.copyWith(
                color: ColorManager.darkerGrey,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
