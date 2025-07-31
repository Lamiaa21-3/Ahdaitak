import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/font_weight_helper.dart';
import '../../../core/theming/styles.dart';

class HelpExpandedContainer extends StatefulWidget {
  const HelpExpandedContainer({super.key, required this.text});
final String text;
  @override
  State<HelpExpandedContainer> createState() => _HelpExpandedContainerState();
}

class _HelpExpandedContainerState extends State<HelpExpandedContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      // margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: ColorManager.darkerGrey, width: 1),
      ),
      // elevation: 2,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'كيف استطيع استخدام اهديتك ؟',
                  style: StylesManager.font14MorePurpleMedium,
                ),

                IconButton(
                  icon: Icon(
                    _isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
                    color: ColorManager.purple,

                    size: 28,
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
