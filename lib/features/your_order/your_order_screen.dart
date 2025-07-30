import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/your_order/widgets/your_order_main_container.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class YourOrderScreen extends StatefulWidget {
  const YourOrderScreen({super.key});

  @override
  State<YourOrderScreen> createState() => _YourOrderScreenState();
}

class _YourOrderScreenState extends State<YourOrderScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: Column(

          children: [
            // verticalSpace(20),
            Padding(
              padding:  EdgeInsets.only(left: 300.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, color: ColorManager.white),
              ),
            ),
            Text(
              S.of(context).checkYourOrder,
              style: StylesManager.font22WhiteMedium,
            ),
            verticalSpace(30),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       isSelected = !isSelected;
            //     });
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 24,
            //       vertical: 12,
            //     ),
            //     decoration: BoxDecoration(
            //       color: isSelected ? Colors.amber : Colors.white,
            //       borderRadius: BorderRadius.circular(12),
            //       border: Border.all(color: Colors.amber, width: 2),
            //     ),
            //     child: Text(
            //       'الميداليات',
            //       style: TextStyle(
            //         color: isSelected ? Colors.white : Colors.amber,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),


            YourOrderMainContainer(),
          ],
        ),
      ),
    );
  }
}
