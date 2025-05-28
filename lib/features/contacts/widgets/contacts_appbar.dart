import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class ContactsAppbar extends StatelessWidget {
  const ContactsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpace(11),
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        Spacer(),
        TextButton(onPressed: () {


        },
          style: ButtonStyle(
            backgroundColor:  WidgetStatePropertyAll(ColorManager.purple),
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:  WidgetStatePropertyAll(Size(100.w, 30.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            ),
          ), child: Text(S.of(context).contacts,style: StylesManager.font12WhiteRegular,),

        ),
        horizontalSpace(11),



      ],
    );
  }
}