import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/core/widgets/warning_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'automatic_charging_operations_more_row.dart';

class AutomaticChargingOperationsMainContainer extends StatelessWidget {
  const AutomaticChargingOperationsMainContainer({super.key});

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
              verticalSpace(44),
              Text(
                'ليس لديك عمليات شحن تلقائي حتى الآن',
                style: StylesManager.font20DarkPurpleMedium,
              ),
              verticalSpace(12),
              Text(
                'وفر الوقت والمال باختيار تلقائي',
                style: StylesManager.font16MorePurpleMedium.copyWith(
                  color: ColorManager.darkerGrey,
                ),
              ),
              AutomaticChargingOperationsMoreRow(),

              verticalSpace(22),
              WarningContainer(
                text:
                    'نحن نعمل على دعم الشحن التلقائي للجميع، ولكنه غير متوفر حاليًالبعض  المشغلين',
              ),
              verticalSpace(22),
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
