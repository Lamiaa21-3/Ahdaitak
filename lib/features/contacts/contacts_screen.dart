import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';

import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/contacts/widgets/contacts_appbar.dart';
import 'package:ahdydic/features/contacts/widgets/contacts_list_view.dart';
import 'package:ahdydic/features/contacts/widgets/contacts_row_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactsAppbar(),
                ContactsListView(),
                Padding(
                  padding: EdgeInsets.only(right: 20.0.w),
                  child: Text(
                    S.of(context).chooseFromYourContacts,
                    style: StylesManager.font24DarkPurpleRegular,
                  ),
                ),
                ContactsRowCheck(
                  text: S.of(context).selectedContactsWithoutNumber,
                ),
                verticalSpace(20),
                ContactsRowCheck(text: S.of(context).doNotSendMessages),
                verticalSpace(20),
                ContactsRowCheck(text: S.of(context).dataContactsPrivatedWellS),
                verticalSpace(25),
                CustomButton(
                  text: S.of(context).chooseFromYourContacts,
                  backgroundColor: ColorManager.darkPurple,
                  function: () {
                    context.pushNamed(Routes.viewContactsScreen);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






