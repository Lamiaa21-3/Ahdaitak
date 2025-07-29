


import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../theming/color.dart';
import '../theming/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(left: 180.0.w
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
              text: text,
              style: StylesManager.font18WhiteMedium,
            ),

          ],
        ),
      ),
    );
  }
}
