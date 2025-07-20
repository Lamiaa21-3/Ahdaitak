
import 'package:ahdydic/core/theming/color.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_tabs_with_content.dart';
import 'history_container.dart';
import 'how_it_works_container.dart';
import 'medals_container.dart';

class RewardsMainContainer extends StatefulWidget {
  const RewardsMainContainer({super.key});

  @override
  State<RewardsMainContainer> createState() => _RewardsMainContainerState();
}

class _RewardsMainContainerState extends State<RewardsMainContainer> {
  int selectedIndex = 0;

  void _onTabChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Container(
              width: 350.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
                color: ColorManager.white,
              ),
              child: CustomTabsWithContent(onTabChanged: _onTabChanged),
            ),
          ),
          IndexedStack(
            index: selectedIndex,
            children: [
              MedalsContainer(),
              HistoryContainer(),
              HowItWorksContainer(),
            ],
          ),
        ],
      ),
    );
  }






}







