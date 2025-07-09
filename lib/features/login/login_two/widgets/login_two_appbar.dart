

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class LoginTwoAppbar extends StatelessWidget {
  const LoginTwoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 200.0.w
      ),
      child: Text.rich(

        TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.white,
                  size: 24,
                ),
              ),
            ),
            TextSpan(
              text: S.of(context).login,
              style: StylesManager.font18WhiteMedium,
            ),

          ],
        ),
      ),
    );
    // Row(
    //   children: [
    //     IconButton(
    //       onPressed: () {
    //         context.pop();
    //       },
    //       icon: Icon(Icons.arrow_back_ios, color: ColorManager.white,size: 24,),
    //     ),
    //     Text(S.of(context).login,style: StylesManager.font18WhiteMedium,)
    //   ],
    // );
  }
}
