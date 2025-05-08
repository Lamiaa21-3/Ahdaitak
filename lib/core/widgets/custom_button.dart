import 'package:ahdydic/core/helper/spacing.dart';
import 'package:flutter/material.dart';

import '../theming/styles.dart';

class CustomButton extends StatelessWidget {
  final TextStyle? textStyle;
  final Color backgroundColor;
  final String text;
  final void Function()? function;
  final EdgeInsets? padding;
  final String ? image;

  const CustomButton({
    super.key,
    required this.text,
    this.function,
    this.padding,
    required this.backgroundColor, this.textStyle, this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: TextButton(
        onPressed: function,
        style: ButtonStyle(
          backgroundColor:  WidgetStatePropertyAll(backgroundColor),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 50)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          ),
        ),
        child: Row(
          children: [
            horizontalSpace(8),
            Image.asset(image!),
            horizontalSpace(12),
            Text(text, style:textStyle??StylesManager.font30White500 ),

          ],
        ),
      ),
    );
  }
}
