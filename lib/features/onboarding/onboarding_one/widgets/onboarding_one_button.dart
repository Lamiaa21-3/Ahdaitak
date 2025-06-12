

import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';


class OnboardingOneButton extends StatelessWidget {


  const OnboardingOneButton({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: TextButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor:  WidgetStatePropertyAll(ColorManager.purple),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 50)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            horizontalSpace(8),

            Image.asset(ImagesManager.googleLoginOne),
            horizontalSpace(12),
            Text('سجل باستخدام جوجل', style:StylesManager.font18WhiteMedium ),

          ],
        ),
      ),
    );
  }
}
