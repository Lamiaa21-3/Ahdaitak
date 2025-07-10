

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';

class CountriesAppbar extends StatelessWidget {
  const CountriesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 350.0),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(Icons.arrow_back_ios, color: ColorManager.white),
      ),
    );
  }
}
