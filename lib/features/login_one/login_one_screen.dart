import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class LoginOneScreen extends StatelessWidget {
  const LoginOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [

            Padding(
              padding:  EdgeInsets.only(right: 300.0.w
              ),
              child: IconButton(onPressed: (){context.pop();}, icon: Icon(Icons.arrow_forward_ios,)),
            ),
            Image.asset(ImagesManager.loginOneBackground),
            verticalSpace(110),
            Text(
              S.of(context).welcomBack,
              style: StylesManager.font24DartPurpleBold,
            ),
            CustomButton(
              text: S.of(context).loginWithGoogle,
              backgroundColor: ColorManager.darkPurple,
              image:ImagesManager.googleLoginOne
              ,
            ),
            verticalSpace(12),
            LoginOneRowDivider(),
            Text(S.of(context).completeUsingAnotherMethod,style: StylesManager.font18PinkMedium,)

          ],
        ),
      ),
    );
  }
}
class LoginOneRowDivider extends StatelessWidget {
  const LoginOneRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        horizontalSpace(20),
        Container(
          width: 130.w,
          height: 1.h,
          color: ColorManager.lightGrey,
        ),
        horizontalSpace(23),
        Text('او',style: StylesManager.font20GreyMedium,),
        horizontalSpace(23),
        Container(
          width: 130.w,
          height: 1.h,
          color: ColorManager.lightGrey,
        ),
      ],
    );
  }
}
