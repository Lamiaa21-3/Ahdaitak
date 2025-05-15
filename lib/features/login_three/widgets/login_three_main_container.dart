import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';

class LoginThreeMainContainer extends StatelessWidget {
  const LoginThreeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      height: 320.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorManager.grey, width: 1.w),
      ),
      child: Column(
        children: [
          verticalSpace(21.h),
          Text(
            S.of(context).connectingWithPeopleSince,
            style: StylesManager.font14MorePurpleMedium,
          ),
          verticalSpace(29),
          LoginThreeInformationRow(),
          verticalSpace(37),
          Container(
            width: 332.w,
            height: 1.h,
            color: ColorManager.lightGrey,

          ),
          verticalSpace(16),
          Text(
            S.of(context).trustedByOurPartners,
            style: StylesManager.font14MorePurpleMedium,
          ),
          verticalSpace(16),
          LoginThreeRowImages(),
        ],
      ),
    );
  }
}



class LoginThreeRowImages extends StatelessWidget {
  const LoginThreeRowImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset(ImagesManager.etsilate),
        horizontalSpace(8),
        Image.asset(ImagesManager.orange),
        horizontalSpace(8),
        Image.asset(ImagesManager.vodafone),
        horizontalSpace(8),
        Image.asset(ImagesManager.we),



      ],
    );
  }
}


class LoginThreeInformationRow extends StatelessWidget {
  const LoginThreeInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        horizontalSpace(30),
        LoginThreeItemRow(
          image: ImagesManager.mobilePhone,
          rating: ' م 550',
          text: S.of(context).balanceRecharge,
        ),
        horizontalSpace(45),
        LoginThreeItemRow(
          image: ImagesManager.person,
          rating: '6.3 م',
          text: S.of(context).messengers,
        ),
        horizontalSpace(45),
        LoginThreeItemRow(
          image: ImagesManager.countries,
          rating: '+150',
          text: S.of(context).countries,
        ),
      ],
    );
  }
}

class LoginThreeItemRow extends StatelessWidget {
  const LoginThreeItemRow({
    super.key,
    required this.image,
    required this.rating,
    required this.text,
  });

  final String image;
  final String rating;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(8),
        Text(rating, style: StylesManager.font14PinkBold),
        Text(text, style: StylesManager.font16PurplestLight),
      ],
    );
  }
}
