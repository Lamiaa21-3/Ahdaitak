


import 'package:ahdydic/features/view_contacts/widgets/views_contacts_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class ViewsContactsListView extends StatelessWidget {
  const ViewsContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return ViewsContactsItemListView();
        },
      ),
    );
  }
}