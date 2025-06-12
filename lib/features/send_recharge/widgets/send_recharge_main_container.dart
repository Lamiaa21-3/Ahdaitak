import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:ahdydic/features/send_recharge/widgets/send_recharge_list_view.dart';
import 'package:ahdydic/features/send_recharge/widgets/send_recharge_sub_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class SendRechargeMainContainer extends StatefulWidget {
  const SendRechargeMainContainer({super.key});

  @override
  State<SendRechargeMainContainer> createState() =>
      _SendRechargeMainContainerState();
}

class _SendRechargeMainContainerState extends State<SendRechargeMainContainer> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [

          Container(
            width: double.infinity,
            // height: 630.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              color: ColorManager.white,
            ),
            child: Column(
              children: [
                verticalSpace(90),
                Text(
                  S.of(context).chooseTheAmountCharged,
                  style: StylesManager.font16MorePurpleRegular,
                ),
                verticalSpace(10),
             SendRechargeListView()
              ],
            ),
          ),
          Positioned(
              top: -25.h, // Adjust as needed
              left: 0.w,
              right: 0.w,

              child: SendRechargeSubContainer()),

        ],
      ),
    );
  }
}
