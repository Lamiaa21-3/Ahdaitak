import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_details_container.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_promo_code_container.dart';
import 'package:flutter/material.dart';


import '../../../generated/l10n.dart';
import 'your_order_info_container.dart';

class YourOrderMainContainerItem extends StatelessWidget {
  const YourOrderMainContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(25),
              YourOrderInfoContainer(),
              verticalSpace(8),
              // YourOrderWarningContainer(),
              verticalSpace(8),
              YourOrderPromoCodeContainer(),
              verticalSpace(50),
              YourOrderDetailsContainer(),
              verticalSpace(50),
              CustomButton(
                  onTap:(){
                    context.pushNamed(Routes.checkOutScreen);
                  },
                text: S.of(context).ensurePayment,
                backgroundColor: ColorManager.purple,
                height: 40,

              ),
            ],
          ),
        ],
      ),
    );
  }
}
