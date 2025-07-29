import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_expanded_tile.dart';
import 'how_it_work_sub_container.dart';

class HowItWorksContainer extends StatelessWidget {
  const HowItWorksContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      // padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('كيف يتم كسب النقاط', style: StylesManager.font15MorePurpleBold),
          verticalSpace(6),
          HowItWorkSubContainer(
            image: ImagesManager.starOrder,
            text: 'اكسب نقاطًا في كل مرة ترسل فيها رصيدًا أو تشتري بطاقة',
          ),
          verticalSpace(4),
          HowItWorkSubContainer(
            image: ImagesManager.bronzeMedal,
            text: 'اكسب نقاطًا في كل مرة ترسل فيها رصيدًا أو تشتري بطاقة',
          ),
          verticalSpace(4),
          HowItWorkSubContainer(
            image: ImagesManager.starOrder,
            text: 'اكسب نقاطًا في كل مرة ترسل فيها رصيدًا أو تشتري بطاقة',
          ),
          verticalSpace(8),
          Text('الأسئلة الشائعة', style: StylesManager.font15MorePurpleBold),
          CustomExpandableTile(
            title: 'ارسال الرصيد',
            questions: [
              'كيف يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استقبال الرصيد ؟',
              'اين يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استكمال الطلب ؟',
            ],
          ),
          CustomExpandableTile(
            title: 'الميزات الخاصة بي',
            questions: [
              'كيف يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استقبال الرصيد ؟',
              'اين يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استكمال الطلب ؟',
            ],
          ),
          CustomExpandableTile(
            title: '  بطاقة الهدايا الخاصة بي لا تعمل',
            questions: [
              'كيف يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استقبال الرصيد ؟',
              'اين يمكنني ارسال الرصيد ؟',
              'كيف يمكنني استكمال الطلب ؟',
            ],
          ),
          CustomButton(
            text: 'انظر الشروط والأحكام',
            backgroundColor: ColorManager.purple,
            height: 40.h,
            onTap: () {
              context.pushNamed(Routes.termsAndConditionsRewardsScreen);
            },
          ),
        ],
      ),
    );
  }
}
