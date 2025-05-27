import 'package:ahdydic/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ItemCardsScreen extends StatelessWidget {
  const ItemCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff846C8E),
      body: Column(
        children: [
          ItemCardsMainContainer(),

        ],
      ),
    );
  }
}


class ItemCardsMainContainer extends StatelessWidget {
  const ItemCardsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25),),
      ),
      child:Column(
        children: [

        ],
      ),
    );
  }
}
