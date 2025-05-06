


import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';

class OnboardingColumnTexts extends StatelessWidget {
  const OnboardingColumnTexts({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('أهديتك',style: StylesManager.font42DarkPurpleRegular.copyWith(fontWeight: FontWeightHelper.bold),),
            Text('مرحبا بكم في',style: StylesManager.font42DarkPurpleRegular,),

          ],
        ),
        Text('99٪ من جميع عمليات التعبئة',style: StylesManager.font24DarkPurpleRegular,),
        Text('في خلال 3 ثوان',style: StylesManager.font24DarkPurpleRegular,),
        verticalSpace(50),

        CustomButton(text: 'التالى', backgroundColor: ColorManager.darkPurple,),
      ],
    );
  }
}