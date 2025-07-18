import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroungColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backGroungColor,
    this.controller,
    required this.validator,
    this.errorBorder,
    this.focusedErrorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextFormField(
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.right,
        controller: controller,
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
        style: inputTextStyle ?? StylesManager.font14DartBlueMedium,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          isDense: true,
          contentPadding:
              contentPadding ??
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          focusedBorder:
              focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                borderSide: const BorderSide(
                  color: ColorManager.lightGrey,
                  width: 1,
                ),
              ),
          errorBorder:
              errorBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
          focusedErrorBorder:
              focusedErrorBorder ??
              errorBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
          enabledBorder:
              enableBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                borderSide: const BorderSide(
                  color: ColorManager.lightGrey,
                  width: 1,
                ),
              ),
          hintStyle: hintStyle ?? StylesManager.font23LightGrayRegular,
          fillColor: backGroungColor ?? ColorManager.moreLightGray,
          filled: true,
        ),
      ),
    );
  }
}
