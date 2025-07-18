import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';

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
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                verticalSpace(40),
                Row(
                  children: [
                    Flexible(



                        flex: 1,
                        child: Image.asset(ImagesManager.esim)),
                    horizontalSpace(50),
                    Image.asset(ImagesManager.bigoLive),
                  ],
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






