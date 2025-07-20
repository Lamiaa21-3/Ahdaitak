import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class DetailsMedalGridView extends StatelessWidget {
  const DetailsMedalGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final rewards = [
      RewardData(
        image: ImagesManager.bronzeMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
        descr: ' لقد قمت بإضافة رقم هاتفك الى التطبيق',
      ),
      RewardData(
        image: ImagesManager.goldMedal,
        title:'ارقام محفوظة',
        date: '22 Jun 2025',
        descr: ' لقد قمت بإضافة رقم هاتفك الى التطبيق',
      ),
      RewardData(
        image: ImagesManager.bronzeMedal,
        title:'ارقام محفوظة',
        date: '22 Jun 2025',
        descr:' لقد قمت بإضافة رقم هاتفك الى التطبيق'
      ),
      RewardData(
        image: ImagesManager.sliverMedal,
        title:'ارقام محفوظة',
        date: '22 Jun 2025',
        descr: ' لقد قمت بإضافة رقم هاتفك الى التطبيق',
      ),  RewardData(
        image: ImagesManager.bronzeMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
        descr: ' لقد قمت بإضافة رقم هاتفك الى التطبيق',
      ),
      RewardData(
        image: ImagesManager.sliverMedal,
        title: 'ارقام محفوظة',
        date: '22 Jun 2025',
        descr: ' لقد قمت بإضافة رقم هاتفك الى التطبيق',
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
  final String descr;
  final String date;

  RewardData({
    required this.descr,
    required this.image,
    required this.title,
    required this.date,
  });
}

class RewardCard extends StatelessWidget {
  final RewardData data;

  const RewardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 142.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorManager.borderGrey, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       // mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 1,
              child: Image.asset(data.image,width: 60,height: 60,)),
          Text(
            data.title,
            style: StylesManager.font16MorePurpleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            data.descr,
            style: StylesManager.font12DarkPurpleRegular,
            textAlign: TextAlign.center,
          ),

          Text(
            data.date,
            style: StylesManager.font12WhiteRegular.copyWith(color: ColorManager.pink),
          ),
        ],
      ),
    );
  }
}