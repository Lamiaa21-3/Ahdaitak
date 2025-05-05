import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/images.dart';

class LoginSocialRow extends StatelessWidget {
  const LoginSocialRow({super.key});

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