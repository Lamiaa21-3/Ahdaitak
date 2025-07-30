import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';



class EditProfileTextFormField extends StatelessWidget {
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
  final Widget? prefixIcon;

  const EditProfileTextFormField({
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
    this.focusedErrorBorder, this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextFormField(

        textAlign: TextAlign.left,
        controller: controller,
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
        style: inputTextStyle ?? StylesManager.font16MorePurpleMedium,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          isDense: true,
          contentPadding:
          contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          focusedBorder:
          focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  40
                ),
                borderSide: const BorderSide(
                  color: ColorManager.lightGrey,
                  width: 1,
                ),
              ),
          errorBorder:
          errorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    40
                ),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
          focusedErrorBorder:
          focusedErrorBorder ??
              errorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    40
                ),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
          enabledBorder:
          enableBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    40
                ),
                borderSide: const BorderSide(
                  color: ColorManager.lightGrey,
                  width: 1,
                ),
              ),
          hintStyle: hintStyle ?? StylesManager.font16MorePurpleMedium,
          fillColor: backGroungColor ?? ColorManager.moreLightGray,
          filled: true,
        ),
      ),
    );
  }
}
