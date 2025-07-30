


import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class GooglePayButton extends StatelessWidget {
  const GooglePayButton({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(

          backgroundColor:  WidgetStatePropertyAll(ColorManager.purple),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:  WidgetStatePropertyAll(Size(double.infinity,  43.h)),
          shape: WidgetStatePropertyAll(

            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35),
                side: BorderSide(color: ColorManager.pink,width: 1)

            ),
          ),
        ),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding:  EdgeInsets.only(top: 4.0),
              child: Text('الدفع بواسطة', style:StylesManager.font18WhiteMedium, ),
            ),
            horizontalSpace(3),
            Image.asset(ImagesManager.buttonGooglePay,),
          ],
        ),


      ),
    );
  }
}
