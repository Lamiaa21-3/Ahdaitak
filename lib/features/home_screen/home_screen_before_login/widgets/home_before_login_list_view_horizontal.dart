import 'package:flutter/material.dart';

import '../../../../core/theming/images.dart';
import 'home_before_login_reward_card.dart';
class HomeRewardData {
  final String image;
  final String title;
  final String date;

  HomeRewardData({required this.image, required this.title, required this.date});
}

class HomeBeforeLoginListViewHorizontal extends StatelessWidget {
   HomeBeforeLoginListViewHorizontal({super.key});
  final rewards = [
    HomeRewardData(
      image: ImagesManager.bronzeMedal,
      title: 'ارقام محفوظة',
      date: '22 Jun 2025',
    ),
    HomeRewardData(
      image: ImagesManager.goldMedal,
      title: 'ارقام محفوظة',
      date: '22 Jun 2025',
    ),
    HomeRewardData(
      image: ImagesManager.bronzeMedal,
      title: 'ارقام محفوظة',
      date: '22 Jun 2025',
    ),
    HomeRewardData(
      image: ImagesManager.sliverMedal,
      title: 'ارقام محفوظة',
      date: '22 Jun 2025',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (_,index){
        return HomeBeforeLoginRewardCard(data: rewards[index]);
    },
      itemCount: rewards.length,
    );
  }
}
