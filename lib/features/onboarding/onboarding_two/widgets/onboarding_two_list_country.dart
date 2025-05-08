


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

              children: [
                Image.asset(ImagesManager.sudia),
                horizontalSpace(7),
                Text('سعودية',style: StylesManager.font17LightGrayRegular,),



              ],
            );
          }, separatorBuilder: (context,index){
        return Divider();
      }, itemCount: 3),
    );
  }
}
