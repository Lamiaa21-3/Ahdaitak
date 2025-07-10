




import 'package:ahdydic/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/color.dart';

class ViewContactsFloatingActionButton extends StatelessWidget {
  const ViewContactsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorManager.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Icon(Icons.list, color: ColorManager.white),
      onPressed: () {
        context.pushNamed(Routes.sendContracts);
      },
    );
  }
}