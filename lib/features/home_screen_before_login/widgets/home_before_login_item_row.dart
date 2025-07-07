

import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';

class HomeBeforeLoginItemRow extends StatelessWidget {
  const HomeBeforeLoginItemRow({
    super.key,
    required this.image,
    required this.rating,
    required this.text,
  });

  final String image;
  final String rating;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(8),
        Text(rating, style: StylesManager.font14PinkBold),
        Text(text, style: StylesManager.font16PurplestLight),
      ],
    );
  }
}