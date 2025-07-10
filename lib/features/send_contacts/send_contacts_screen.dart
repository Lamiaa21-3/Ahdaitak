import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/send_contacts/widgets/send_contacts_appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/row_number_field.dart';
import '../../generated/l10n.dart';

class SendContactsScreen extends StatelessWidget {
  const SendContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            verticalSpace(23),
            SendContactsAppbar(),
            verticalSpace(15),
            Container(
              height: 750.h,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                color: ColorManager.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    verticalSpace(30),
                    Text(
                      S.of(context).pleaseEnterPhone,
                      style: StylesManager.font24DarkPurpleRegular,
                    ),
                    Text(
                      S.of(context).WhatYouWantToSendTo,
                      style: StylesManager.font24DarkPurpleRegular,
                    ),
                    verticalSpace(30),
                    RowNumberField(),
                    verticalSpace(53),
                    CustomButton(
                      text: S.of(context).ensurePhoneNumber,
                      backgroundColor: ColorManager.purple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
