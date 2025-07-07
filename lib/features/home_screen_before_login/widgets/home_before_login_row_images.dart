
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/images.dart';

class HomeBeforeLoginRowImages extends StatelessWidget {
  const HomeBeforeLoginRowImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset(ImagesManager.etsilate),
        horizontalSpace(8),
        Image.asset(ImagesManager.orange),
        horizontalSpace(8),
        Image.asset(ImagesManager.vodafone),
        horizontalSpace(8),
        Image.asset(ImagesManager.we),



      ],
    );
  }
}