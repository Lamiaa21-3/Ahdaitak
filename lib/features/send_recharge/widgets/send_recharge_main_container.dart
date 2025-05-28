import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
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
  int selectedIndex = 0;

  final List<Map<String, String>> amounts = const [
    {'display': 'اشترى الآن', 'value': '191.99', 'actual': '191.43'},
    {'value': '171.43', 'actual': '171.43'},
    {'value': '152.43', 'actual': '152.43'},
    {'value': '134.43', 'actual': '134.43'},
    {'value': '114.23', 'actual': '114.23'},
    {'value': '95.43', 'actual': '95.43'},
    {'value': '75.43', 'actual': '75.43'},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          width: double.infinity,
          height: 700.h,
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
              Expanded(
                child: ListView.builder(
                  itemCount: amounts.length,
                  itemBuilder: (context, index) {
                    final item = amounts[index];
                    final isSelected = index == selectedIndex;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: Container(
                          height: 80.h,
                          margin: EdgeInsets.symmetric(vertical: 6.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color:
                                  isSelected
                                      ? ColorManager.darkPurple
                                      : Colors.grey.shade300,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(

                            leading:  Column(
                              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                              mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex:1,
                                    child: Text(
                                      ' ${item['actual']}',
                                      style: StylesManager.font24DartPurpleBold,
                                    ),
                                  ),
                                  Text(
                                    'قبل الخصم',
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.pink[400],
                                    ),
                                  ),
                                ],
                              ),
                                          subtitle:   Text(
                              'جنيه',
                              style: StylesManager.font22DartPurpleRegular,
                            ),
                             trailing:  CustomButton(
                                width: 120.w,
                                height: 25.h,
                                text: 'جنيه ${item['value']}',
                                backgroundColor: ColorManager.darkPurple,
                                textStyle: StylesManager.font12WhiteRegular,
                              ),

                          ),


                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: -30, // Adjust as needed
            left: 0,
            right: 0,

            child: SendRechargeSubContainer()),

      ],
    );
  }
}
