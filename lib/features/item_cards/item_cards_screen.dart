import 'package:ahdydic/core/helper/spacing.dart';

import 'package:ahdydic/core/theming/images.dart';

import 'package:ahdydic/features/item_cards/widgets/item_cards_main_container.dart';
import 'package:flutter/material.dart';


class ItemCardsScreen extends StatelessWidget {
  const ItemCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff846C8E),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                verticalSpace(60),
                Image.asset(ImagesManager.amazon),
                ItemCardsMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




