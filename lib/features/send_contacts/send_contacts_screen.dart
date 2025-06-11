
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/send_contacts/widgets/send_contacts_appbar.dart';


import 'package:flutter/material.dart';
import '../../core/widgets/row_number_field.dart';
import '../../generated/l10n.dart';

class SendContactsScreen extends StatelessWidget {
  const SendContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(30),
            SendContactsAppbar(),
            verticalSpace(30),
            Text(
              S.of(context).pleaseEnterPhone,
              style: StylesManager.font24DarkPurpleRegular,
            ),
            Text(
              S.of(context).WhatYouWantToSendTo,
              style: StylesManager.font24DarkPurpleRegular,
            ),
            RowNumberField(),
            verticalSpace(110),
            CustomButton(
              text: S.of(context).ensurePhoneNumber,
              backgroundColor: ColorManager.purple,
            ),
          ],
        ),
      ),
    );
  }
}
