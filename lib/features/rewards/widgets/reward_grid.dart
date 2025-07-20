
import 'package:ahdydic/features/rewards/widgets/reward_card.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/images.dart';
import '../../details_medal/widgets/details_medal_grid_view.dart';


class RewardData {
  final String image;
  final String title;
  final String date;

  RewardData({required this.image, required this.title, required this.date});
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