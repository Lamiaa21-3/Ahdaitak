import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_sub_container.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_text_form_field.dart';
import 'package:ahdydic/features/view_contacts/widgets/views_contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewContactsScreen extends StatelessWidget {
  const ViewContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 50.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 785.h,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(40),

                    ViewContactsTextFormField(),
                    verticalSpace(15),
                    ViewsContactsListView(),
                  ],
                ),
              ),
              Positioned(
                top: -20.h, // Adjust as needed
                left: 0.w,
                right: 0.w,

                child: ViewContactsSubContainer(),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Icon(Icons.list, color: ColorManager.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
