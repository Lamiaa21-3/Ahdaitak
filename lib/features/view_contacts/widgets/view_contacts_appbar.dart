

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class ViewContactsAppbar extends StatelessWidget {
  const ViewContactsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(


      children: [

        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: ColorManager.darkPurple,size: 20,),
        ),
        Text(
          S.of(context).whoDoYouWantToSendItTo,
          style: StylesManager.font24DarkPurpleRegular,
        ),
      ],
    );
  }
}
