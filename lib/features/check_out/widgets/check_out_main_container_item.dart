import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../generated/l10n.dart';
import '../../card_payment_screen/card_payment_screen.dart';
import '../../google_pay_screen/google_pay_screen.dart';
import 'payment_method_selector.dart';
import 'check_out_details_container.dart';
import 'check_out_info_container.dart';

class CheckOutMainContainerItem extends StatefulWidget {
  const CheckOutMainContainerItem({super.key});

  @override
  State<CheckOutMainContainerItem> createState() => _CheckOutMainContainerItemState();
}

class _CheckOutMainContainerItemState extends State<CheckOutMainContainerItem> {
  String selectedMethod = 'google';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          verticalSpace(50),
          Text(
           'اي طريقة دفع تريد استخدامها ؟',
            style: StylesManager.font16MorePurpleMedium.copyWith(
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(11),
          PaymentMethodSelector(
            selectedMethod: selectedMethod,
            onChanged: (method) {
              setState(() {
                selectedMethod = method;
              });
            },
          ),
          verticalSpace(14),
          CheckOutInfoContainer(),
          verticalSpace(100),
          CheckOutDetailsContainer(),
          verticalSpace(11),
          CustomButton(
            onTap:(){
              if (selectedMethod == 'google') {
               context.pushNamed(Routes.googlePayScreen);
                print('google');
              } else if (selectedMethod == 'card') {
                context.pushNamed(Routes.cardPaymentScreen);
                print('card');
              }
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
