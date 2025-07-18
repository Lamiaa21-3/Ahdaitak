import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

class YourOrderWarningContainer extends StatelessWidget {
  const YourOrderWarningContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        // margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5), // Light gray background
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset(ImagesManager.warning),
        horizontalSpace(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تتم إضافة أرصدة فودافون مصر إلى رصيد دولي خاص لا يمكن',
                    style: StylesManager.font12MorePurpleMedium,
                  ),
                  Text(
                    'استخدامه إلا للمكالمات',
                    style: StylesManager.font12MorePurpleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
