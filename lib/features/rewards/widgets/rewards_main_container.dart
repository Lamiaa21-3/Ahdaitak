import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/font_weight_helper.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

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
              _buildMedalsContainer(),
              _buildHistoryContainer(),
              _buildHowItWorksContainer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMedalsContainer() {
    return DefaultTabController(
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
                Tab(text: S.of(context).settings),
              ],
            ),
            SizedBox(
              height: 800.h, // لازم تحددي ارتفاع ثابت للـ TabBarView
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(33),
                      Text(
                        S.of(context).allMedals,
                        style: StylesManager.font14DarkPurpleBold,
                      ),
                      verticalSpace(12),
                      Expanded(
                        child: ListView.separated(
                          itemCount: 4,
                          itemBuilder: (_, _) {
                            return Container(
                              height: 110.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorManager.white,
                                border: Border.all(
                                  color: ColorManager.borderGrey,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  horizontalSpace(15),
                                  Image.asset(ImagesManager.medal),
                                  horizontalSpace(26),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S
                                            .of(context)
                                            .topUpTheBalanceForSomeoneElse,
                                        style:
                                            StylesManager
                                                .font14MorePurpleMedium,
                                      ),
                                      verticalSpace(12),
                                      TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                ColorManager.purple,
                                              ),
                                          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          minimumSize: WidgetStatePropertyAll(
                                            Size(175.w, 31.h),
                                          ),
                                          shape: WidgetStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                color: ColorManager.pink,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              ImagesManager.rewardStar,
                                            ),
                                            horizontalSpace(4),
                                            Text(
                                              S.of(context).Earn25points,
                                              style: StylesManager
                                                  .font14PinkRegular
                                                  .copyWith(
                                                    color: ColorManager.white,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return verticalSpace(4);
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(33),
                      Text(
                        S.of(context).allMedals,
                        style: StylesManager.font14DarkPurpleBold,
                      ),
                      verticalSpace(12),
                      Expanded(
                        child: ListView.separated(
                          itemCount: 4,
                          itemBuilder: (_, _) {
                            return Container(
                              height: 110.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorManager.white,
                                border: Border.all(
                                  color: ColorManager.borderGrey,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  horizontalSpace(15),
                                  Image.asset(ImagesManager.medal),
                                  horizontalSpace(26),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S
                                            .of(context)
                                            .topUpTheBalanceForSomeoneElse,
                                        style:
                                            StylesManager
                                                .font14MorePurpleMedium,
                                      ),
                                      verticalSpace(12),
                                      TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                ColorManager.purple,
                                              ),
                                          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          minimumSize: WidgetStatePropertyAll(
                                            Size(175.w, 31.h),
                                          ),
                                          shape: WidgetStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                color: ColorManager.pink,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              ImagesManager.rewardStar,
                                            ),
                                            horizontalSpace(4),
                                            Text(
                                              S.of(context).Earn25points,
                                              style: StylesManager
                                                  .font14PinkRegular
                                                  .copyWith(
                                                    color: ColorManager.white,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return verticalSpace(4);
                          },
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      verticalSpace(30),
                      Row(
                        children: [
                          Text(
                            S.of(context).medals,
                            style: StylesManager.font14DarkPurpleBold,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.detailsMedalScreen);
                            },
                            child: Text(
                              S.of(context).watchAll,
                              style: StylesManager.font12MorePurpleMedium
                                  .copyWith(color: ColorManager.pink),
                            ),
                          ),
                        ],
                      ),
                      RewardsGrid(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryContainer() {
    return Container(

      margin: const EdgeInsets.all(16),
      // padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'سجل النقاط',
            style: StylesManager.font16MorePurpleRegular.copyWith(
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(5),
          SizedBox(
            height: 800.h,
            child: ListView.separated(
              itemBuilder: (_, _) {
                return Container(
                  height: 90.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.borderGrey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      horizontalSpace(12),
                      Container(
                        height: 65,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: ColorManager.borderGrey,
                            width: .5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagesManager.starOrder),
                            verticalSpace(5),
                            Text(
                              '+55',
                              style: StylesManager.font16MorePurpleRegular
                                  .copyWith(fontWeight: FontWeightHelper.bold,),
                            ),
                          ],
                        ),
                      ),
                      horizontalSpace(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ميدالية الأرقام المحفوظة',style:  StylesManager.font16MorePurpleMedium,),
                          Text('22 Jun 2025',style:  StylesManager.font14PinkRegular,),
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (_, _) {
                return verticalSpace(12);
              },
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHowItWorksContainer() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text('⚙️ محتوى كيف تعمل'),
    );
  }
}

class CustomTabsWithContent extends StatefulWidget {
  const CustomTabsWithContent({super.key, required this.onTabChanged});

  final Function(int) onTabChanged;

  @override
  State<CustomTabsWithContent> createState() => _CustomTabsWithContentState();
}

class _CustomTabsWithContentState extends State<CustomTabsWithContent> {
  int selectedIndex = 0;

  final List<String> tabs = ['الميداليات', 'السجل', 'كيف تعمل'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //  التبويبات
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(tabs.length, (index) {
              final isSelected = selectedIndex == index;

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      print(index);
                    });
                    widget.onTabChanged(index);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color:
                          isSelected ? const Color(0xFF4B3B5A) : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class RewardsGrid extends StatelessWidget {
  const RewardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final rewards = [
      RewardData(
        image: ImagesManager.bronzeMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
      ),
      RewardData(
        image: ImagesManager.goldMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
      ),
      RewardData(
        image: ImagesManager.bronzeMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
      ),
      RewardData(
        image: ImagesManager.sliverMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: rewards.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return RewardCard(data: rewards[index]);
        },
      ),
    );
  }
}

class RewardData {
  final String image;
  final String title;
  final String date;

  RewardData({required this.image, required this.title, required this.date});
}

class RewardCard extends StatelessWidget {
  final RewardData data;

  const RewardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 142.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorManager.borderGrey, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(data.image, width: 60, height: 60),

          Text(
            data.title,
            style: StylesManager.font18PinkMedium.copyWith(
              color: ColorManager.purple,
            ),
            textAlign: TextAlign.center,
          ),

          Text(
            data.date,
            style: StylesManager.font12WhiteRegular.copyWith(
              color: ColorManager.pink,
            ),
          ),
        ],
      ),
    );
  }
}
