import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';
import 'check_out_credit_container.dart';
import 'check_out_details_container.dart';
import 'check_out_info_container.dart';

class CheckOutMainContainerItem extends StatelessWidget {
  const CheckOutMainContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          verticalSpace(30),
          Text(
            S.of(context).howWantPay,
            style: StylesManager.font16MorePurpleMedium.copyWith(
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(11),
          CheckOutCreditContainer(),
          verticalSpace(14),
          CheckOutInfoContainer(),
          verticalSpace(150),
          CheckOutDetailsContainer(),
          verticalSpace(11),
          CustomButton(
            onTap:(){

            },
            text: S.of(context).ensurePayment,
            backgroundColor: ColorManager.purple,
            height: 40,

          ),
        ],
      ),
    );
  }
}
