import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class YourOrderPromoCodeContainer extends StatefulWidget {
  const YourOrderPromoCodeContainer({super.key});

  @override
  _YourOrderPromoCodeContainerState createState() =>
      _YourOrderPromoCodeContainerState();
}

class _YourOrderPromoCodeContainerState
    extends State<YourOrderPromoCodeContainer> {
  bool isExpanded = true;
  final TextEditingController promoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6F7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: Row(

              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: ColorManager.morePurple,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(Icons.add, size: 16, color: ColorManager.white),
                ),
                horizontalSpace(20),
                Text(
                  S.of(context).addPromoCode,
                  style: StylesManager.font14MorePurpleMedium,
                ),
                Spacer(),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: ColorManager.morePurple,
                ),
              ],
            ),
          ),
          if (isExpanded) ...[
             verticalSpace( 16),
            TextField(
              controller: promoController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                hintText: '',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                    color: Color(0xFF5B2A83),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:ColorManager.morePurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: ColorManager.pink,width: 1)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child:  Text('تطبيق',style: StylesManager.font12WhiteRegular,),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child:  Text('إلغاء',style: StylesManager.font12WhiteRegular,),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
