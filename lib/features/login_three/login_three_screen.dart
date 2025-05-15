import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/login_three/widgets/login_three_appbar.dart';
import 'package:ahdydic/features/login_three/widgets/login_three_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class LoginThreeScreen extends StatelessWidget {
  const LoginThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [LoginThreeAppbar(), LoginThreeMainContainer()],
        ),
      ),
    );
  }
}



