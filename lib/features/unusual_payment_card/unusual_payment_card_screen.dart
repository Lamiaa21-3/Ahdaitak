

import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/unusual_payment_card/widgets/unusual_payment_card_main_container.dart';
import 'package:flutter/material.dart';

class UnusualPaymentCardScreen extends StatelessWidget {
  const UnusualPaymentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(child: ListView(
        children: [
          CustomAppbar(text: 'بطاقة الدفع غير متاحة'),
          verticalSpace(20),
          UnusualPaymentCardMainContainer(),
        ],
      )),
    );
  }
}
