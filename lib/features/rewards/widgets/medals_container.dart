

import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/features/rewards/widgets/all_medals_tap.dart';
import 'package:ahdydic/features/rewards/widgets/my_medal_tap.dart';
import 'package:ahdydic/features/rewards/widgets/reward_grid.dart';
import 'package:ahdydic/features/rewards/widgets/rewards_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';
import 'display_all_tap.dart';

class MedalsContainer extends StatelessWidget {
  const MedalsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3, // عدد التابات
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min, // مهم علشان الحاوية ماتاخدش كل الشاشة
            children: [
              TabBar(
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(text: S.of(context).showAll),
                  Tab(text: S.of(context).allMedals),
                  Tab(text: S.of(context).myMedals),
                ],
              ),
              SizedBox(
                height: 800.h, // لازم تحددي ارتفاع ثابت للـ TabBarView
                child: TabBarView(
                  children: [
                    DisplayAllTap(),
                  AllMedalsTap(),

                  MyMedalTap(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

}
