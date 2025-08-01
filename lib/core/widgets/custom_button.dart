import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class CustomButton extends StatelessWidget {
  final TextStyle? textStyle;
  final Color backgroundColor;
  final String text;
  final void Function()? onTap;
  final EdgeInsets? padding;
final double ? width;
final double ? height;
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.padding,
    required this.backgroundColor, this.textStyle, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: 15.0, right: 15,),
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(

          backgroundColor:  WidgetStatePropertyAll(backgroundColor),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:  WidgetStatePropertyAll(Size(width??double.infinity, height?? 56.h)),
          shape: WidgetStatePropertyAll(

            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35),
              side: BorderSide(color: ColorManager.pink,width: 1)

            ),
          ),
        ),
        child:
            Text(text, style:textStyle??StylesManager.font18WhiteMedium ),


      ),
    );
  }
}
