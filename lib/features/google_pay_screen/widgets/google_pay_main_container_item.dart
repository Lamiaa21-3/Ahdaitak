import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';
import 'google_pay_button.dart';
import 'google_pay_change_method.dart';
import 'google_pay_details_container.dart';
import 'google_pay_info_container.dart';


class GooglePayMainContainerItem extends StatelessWidget {
  const GooglePayMainContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(50),
          Text(
         'الدفع بواسطة ',
            style: StylesManager.font16MorePurpleMedium.copyWith(
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(14),
          GooglePayChangeMethod(),
          verticalSpace(14),
          GooglePayInfoContainer(),
          verticalSpace(100),
          GooglePayDetailsContainer(),
          verticalSpace(11),
          GooglePayButton(
            onTap:(){

            },


          ),
        ],
      ),
    );
  }
}
