
import 'package:ahdydic/core/widgets/custom_appbar.dart';
import 'package:ahdydic/features/record/widgets/record_item_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/spacing.dart';

import '../../core/theming/color.dart';

import '../../generated/l10n.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            CustomAppbar(text: S.of(context).record),
            verticalSpace(30),
            Container(
              height: 660.h,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

              child: RecordItemMainContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
