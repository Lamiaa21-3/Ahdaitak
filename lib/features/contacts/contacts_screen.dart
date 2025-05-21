import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/contacts/widgets/contacts_appbar.dart';
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
                  padding:  EdgeInsets.only(right: 20.0.w),
                  child: Text(
                    S.of(context).chooseFromYourContacts,
                    style: StylesManager.font24DarkPurpleRegular,
                  ),
                ),
                ContactsRowCheck(text: S.of(context).selectedContactsWithoutNumber),
                verticalSpace(20),
                ContactsRowCheck(text: S.of(context).doNotSendMessages),
                verticalSpace(20),
                ContactsRowCheck(text: S.of(context).dataContactsPrivatedWellS),
                verticalSpace(25),
                CustomButton(text: S.of(context).chooseFromYourContacts, backgroundColor: ColorManager.darkPurple),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactsRowCheck extends StatelessWidget {
  const ContactsRowCheck({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 20.0.w
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: ColorManager.darkPurple),
          horizontalSpace(15),
          SizedBox(
            width: 310.h,
            child: Text(
              text,
              style: StylesManager.font18BlackMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactsListView extends StatelessWidget {
  const ContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ContactsItemListView();
        },
      ),
    );
  }
}

class ContactsItemListView extends StatelessWidget {
  const ContactsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 8.h),
      child: Container(
        height: 100.h,
        decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // shadow color
              spreadRadius: 1, // how much the shadow spreads
              blurRadius: 2, // how blurry the shadow is
              offset: Offset(0, 5), // changes position of shadow (x, y)
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: ColorManager.borderGrey),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text('Mama', style: StylesManager.font24DarkPurpleRegular),
                  Text('0192938444', style: StylesManager.font14PinkRegular),
                ],
              ),
              horizontalSpace(10),
              Image.asset(ImagesManager.girle),
            ],
          ),
        ),
      ),
    );
  }
}
