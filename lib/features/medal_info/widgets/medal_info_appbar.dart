


import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class MedalInfoAppbar extends StatelessWidget {
  const MedalInfoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios,color: ColorManager.white,),),
        Text(S.of(context).awardsAndRewards,style: StylesManager.font18WhiteMedium,)
      ],
    );
  }
}
