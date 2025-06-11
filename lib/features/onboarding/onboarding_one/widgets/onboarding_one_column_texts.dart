


import 'package:flutter/material.dart';

import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/theming/styles.dart';


class OnboardingOneColumnTexts extends StatelessWidget {
  const OnboardingOneColumnTexts({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('مرحبا بكم في',style: StylesManager.font26MorePurpleMedium,),
            Text('أهديتك',style: StylesManager.font26MorePurpleMedium.copyWith(fontWeight: FontWeightHelper.bold),),

          ],
        ),
        Text(' 99٪ من جميع عمليات التعبئة تم ',style: StylesManager.font24DarkPurpleRegular,),
        Text('تسليمها في خلال 3 ثوان',style: StylesManager.font24DarkPurpleRegular,),

      ],
    );
  }
}