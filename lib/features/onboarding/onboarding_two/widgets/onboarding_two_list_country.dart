


import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/styles.dart';

class OnboardingTwoListCountry extends StatelessWidget {
  const OnboardingTwoListCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
      child: ListView.separated(



          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('سعودية',style: StylesManager.font17LightGrayRegular,),
                horizontalSpace(7),
                Image.asset(ImagesManager.sudia),

              ],
            );
          }, separatorBuilder: (context,index){
        return Divider();
      }, itemCount: 3),
    );
  }
}
