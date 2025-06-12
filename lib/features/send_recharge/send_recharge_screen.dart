import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/send_recharge/widgets/send_recharge_main_container.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class SendRechargeScreen extends StatelessWidget {
  const SendRechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorManager.darkPurple,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Column(
                children: [
                  verticalSpace(12),
                  Image.asset(ImagesManager.etsilate),
                  verticalSpace(7),
                  Text(
                    S.of(context).howMuchYouWantToSend,
                    style: StylesManager.font18WhiteMedium,
                  ),
                  verticalSpace(40),
                  SendRechargeMainContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
