import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_appbar.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_text_form_field.dart';
import 'package:ahdydic/features/view_contacts/widgets/views_contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class ViewContactsScreen extends StatelessWidget {
  const ViewContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(30),
            ViewContactsAppbar(),
            verticalSpace(9),
            ViewContactsTextFormField(),
            verticalSpace(15),
            ViewsContactsListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Icon(Icons.list,color: ColorManager.white,),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}




