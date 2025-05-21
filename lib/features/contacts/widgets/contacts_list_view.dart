


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'contacts_item_list_view.dart';

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