import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/images.dart';


class LoginTwoSocialRow extends StatelessWidget {
  const LoginTwoSocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ImagesManager.google),
        horizontalSpace(21),
        Image.asset(ImagesManager.email),
        horizontalSpace(21),
        Image.asset(ImagesManager.faceBook),
      ],
    );
  }
}