import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class CheckOutCreditContainer extends StatelessWidget {
  const CheckOutCreditContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorManager.lighterGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          children: [
            Text(S.of(context).card, style: StylesManager.font18MorePopularBold),
            Spacer(),
            Image.asset(ImagesManager.mestro),
            horizontalSpace(7),
            Image.asset(ImagesManager.mestroCard),
            horizontalSpace(7),
            Image.asset(ImagesManager.visa),

          ],
        ),
      ),
    );
  }
}
