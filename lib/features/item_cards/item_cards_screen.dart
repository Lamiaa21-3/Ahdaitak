import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/theming/images.dart';

import 'package:ahdydic/features/item_cards/widgets/item_cards_main_container.dart';
import 'package:flutter/material.dart';


class ItemCardsScreen extends StatelessWidget {
  const ItemCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            verticalSpace(60),
            Image.asset(ImagesManager.cardAmazon),
            ItemCardsMainContainer(),
          ],
        ),
      ),
    );
  }
}




