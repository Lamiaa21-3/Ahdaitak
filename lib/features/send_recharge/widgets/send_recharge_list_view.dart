



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';

class SendRechargeListView extends StatefulWidget {
  const SendRechargeListView({super.key});

  @override
  State<SendRechargeListView> createState() => _SendRechargeListViewState();
}

class _SendRechargeListViewState extends State<SendRechargeListView> {
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
    return    Expanded(
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
    );
  }
}
