import 'package:ahdydic/core/helper/spacing.dart';

import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/features/gifts/widgets/gifts_main_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


const List<String> list = <String>[
  'assets/images/eygpt.png',
  'assets/images/afghnastin.png',
];

class GiftsScreen extends StatelessWidget {
  const GiftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff846C8E),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                verticalSpace(40),
                Stack(
                  children: [Row(
                    children: [
                      Image.asset(ImagesManager.esim),
                      Padding(
                        padding:  EdgeInsets.only(right: 40.0.w),
                        child: Image.asset(ImagesManager.bigoLive),
                      ),
                    ],
                  )],
                ),

                GiftsMainContainer(),
                // Image.asset(ImagesManager.esim),
                // Positioned(
                //     right: 133.w,
                //  bottom: 500,
                //     child: Image.asset(ImagesManager.bigoLive),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






