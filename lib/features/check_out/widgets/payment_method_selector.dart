// import 'package:ahdydic/core/helper/spacing.dart';
// import 'package:ahdydic/core/theming/color.dart';
// import 'package:ahdydic/core/theming/images.dart';
// import 'package:ahdydic/core/theming/styles.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../generated/l10n.dart';
//
// class CheckOutCreditContainerColumn extends StatelessWidget {
//   const CheckOutCreditContainerColumn({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 65.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: ColorManager.lighterGrey,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 14.0),
//             child: Row(
//               children: [
//                 Text('جوجل باي', style: StylesManager.font18MorePopularBold),
//                 Spacer(),
//                 Image.asset(ImagesManager.googlePay,width: 57,height: 30,),
//
//
//               ],
//             ),
//           ),
//         ),
//         verticalSpace(6),
//         Container(
//           height: 65.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: ColorManager.lighterGrey,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 14.0),
//             child: Row(
//               children: [
//                 Text(S.of(context).card, style: StylesManager.font18MorePopularBold),
//                 Spacer(),
//                 Image.asset(ImagesManager.mestro,width: 30.w,height: 19.h,),
//                 horizontalSpace(7),
//                 Image.asset(ImagesManager.mestroCard,width: 28.w,height: 17.h,),
//                 horizontalSpace(7),
//                 Image.asset(ImagesManager.visa,width: 31.w,height: 31.h,),
//
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:ahdydic/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/images.dart';
import '../../../core/theming/styles.dart';

class PaymentMethodSelector extends StatelessWidget {
  const PaymentMethodSelector({super.key, required this.selectedMethod, required this.onChanged});
  final String selectedMethod;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPaymentOption(
          value: 'google',
          label: 'جوجل باي',
          icons: [Image.asset(ImagesManager.googlePay, width: 57, height: 30)],
        ),
        SizedBox(height: 6.h),
        buildPaymentOption(
          value: 'card',
          label: 'البطاقة',
          icons: [
            Image.asset(ImagesManager.mestro, width: 30.w, height: 19.h),
            horizontalSpace(7),
            Image.asset(ImagesManager.mestroCard, width: 28.w, height: 17.h),
            horizontalSpace(7),
            Image.asset(ImagesManager.visa, width: 31.w, height: 31.h),
            //
          ],
        ),
      ],
    );
  }


  Widget buildPaymentOption({
    required String value,
    required String label,
    required List<Widget> icons,
  }) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: ColorManager.lighterGrey, // lighterGrey
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          children: [
            Text(label, style: StylesManager.font18MorePopularBold),

            const Spacer(),
            ...icons,
            Radio<String>(
              value: value,
              groupValue: selectedMethod,
              activeColor: ColorManager.darkPurple, //
              onChanged: (val) => onChanged(val!),
            ),
          ],
        ),
      ),
    );
  }
}





