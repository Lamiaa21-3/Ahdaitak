
import 'package:ahdydic/core/helper/spacing.dart';
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

         

       ],
          ),
        ],
      ),
    );
  }
}
