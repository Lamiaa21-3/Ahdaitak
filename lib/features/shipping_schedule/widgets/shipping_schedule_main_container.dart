import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/warning_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingScheduleMainContainer extends StatelessWidget {
  const ShippingScheduleMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            verticalSpace(34),
            Text(
              'جدولة عمليات شحن منتظمة مع\n                 الشحن التلقائي',
              style: StylesManager.font16DarkerGreySemiBold,
            ),
            verticalSpace(40),
            Text(
              'مع الشحن التلقائي، يمكنك اختيار وقت وعدد مرات إرسال عمليات الشحن إلى رقم معين. إنها أسهل وأكثر الطرق ملاءمة للشحن. لا توجد تكلفة إضافية، والأكثر من ذلك، إذا كانت هناك أي خصومات متاحة، فسنطبقها تلقائيًا، لذلك نتأكد من حصولك على أفضل سعر. يمكنك إلغاؤها في أي وقت من قسم حسابي.',
              style: StylesManager.font14DarkerGreySemiBold.copyWith(
                fontWeight: FontWeightHelper.regular,
              ),
            ),
            verticalSpace(60),
            WarningContainer(text:               'بالنسبة للشحن التلقائي الدولي، قد يختلف المبلغ الذي تدفعه مقابل الشحن في كل تاريخ دفع وفقًا لأسعار الصرف الأجنبي',),
          ],
        ),
      ),
    );
  }
}
