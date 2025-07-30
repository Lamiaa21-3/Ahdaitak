import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';

class YourOrderInfoContainer extends StatefulWidget {
  const YourOrderInfoContainer({super.key});

  @override
  State<YourOrderInfoContainer> createState() => _YourOrderInfoContainerState();
}

class _YourOrderInfoContainerState extends State<YourOrderInfoContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      // margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: ColorManager.darkerGrey, width: 0.5),
      ),
      // elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImagesManager.etsilate),


                IconButton(
                  icon: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),

                /// Logo
              ],
            ),


            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: const YourOrderDetailsContent(),
              crossFadeState:
                  _isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 200),
            ),
          ],
        ),
      ),
    );
  }
}

class YourOrderDetailsContent extends StatelessWidget {
  const YourOrderDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              '134 جنيه',
              style: StylesManager.font18LightGrayRegular.copyWith(
                color: ColorManager.purple,
              ),
            ),
            Text('Enas Omar', style: StylesManager.font18MorePopularBold),
          ],
        ),
        horizontalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('لقد ارسلت', style: StylesManager.font12MorePurpleMedium),
            Text('191.43 جنيه', style: StylesManager.font16MorePurpleMedium),
          ],
        ),
        horizontalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ضرائب الدولة', style: StylesManager.font12MorePurpleMedium),
            Text('- 57.43 جنيه', style: StylesManager.font16MorePurpleMedium),
          ],
        ),
        horizontalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('سوف يتم استلام', style: StylesManager.font12MorePurpleMedium),
            Text('134 جنيه', style: StylesManager.font16MorePurpleMedium),
          ],
        ),
      ],
    );
  }
}
