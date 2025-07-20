import 'package:ahdydic/features/rewards/widgets/all_medals_tap_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class AllMedalsTap extends StatelessWidget {
  const AllMedalsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(33),
        Text(
          S.of(context).allMedals,
          style: StylesManager.font14DarkPurpleBold,
        ),
        verticalSpace(12),
        AllMedalsTapListView(),
      ],
    );
  }
}
