import 'package:ahdydic/core/helper/extensions.dart';

import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class CheckOutAppbar extends StatelessWidget {
  const CheckOutAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(

      TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.bottom,

            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorManager.white,
                size: 24,
              ),
            ),
          ),

          TextSpan(

            text: S.of(context).paymentDone,
            style: StylesManager.font18WhiteMedium,
          ),

        ],
      ),
    );
  }
}
