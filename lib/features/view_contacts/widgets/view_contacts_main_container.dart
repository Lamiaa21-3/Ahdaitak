import 'package:ahdydic/features/view_contacts/widgets/view_contacts_sub_container.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_text_form_field.dart';
import 'package:ahdydic/features/view_contacts/widgets/views_contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';

class ViewContactsMainContainer extends StatelessWidget {
  const ViewContactsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
