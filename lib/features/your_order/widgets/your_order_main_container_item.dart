
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_promo_code_container.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_warning_container.dart';
import 'package:flutter/material.dart';

import '../your_order_info_container.dart';

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
         YourOrderWarningContainer(),
         verticalSpace(8),
         YourOrderPromoCodeContainer(),

         

       ],
          ),
        ],
      ),
    );
  }
}
