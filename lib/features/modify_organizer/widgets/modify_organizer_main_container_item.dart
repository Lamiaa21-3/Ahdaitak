import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModifyOrganizerMainContainerItem extends StatelessWidget {
  ModifyOrganizerMainContainerItem({super.key});

  final List<Map<String, dynamic>> operators = [
    {
      'name': 'اتصالات',
      'image': ImagesManager.etisalateLine,
    },
    {
      'name': 'اورانج',
      'image': ImagesManager.orangeLine,
    },
    {
      'name': 'فودافون',
      'image': ImagesManager.vodafoneLine,
    },
    {
      'name': 'وي مصر',
      'image': ImagesManager.weLine,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(25),
        color: ColorManager.white,
      ),
      child: Column(
      children: [
        verticalSpace(40),
        ModifyOrganizerLinesContainer(text:'اتصالات' ,image: ImagesManager.etisalateLine,),
        ModifyOrganizerLinesContainer(text:'اورانج' ,image: ImagesManager.orangeLine,),
        ModifyOrganizerLinesContainer(text:'فودافون' ,image: ImagesManager.vodafoneLine,),
        ModifyOrganizerLinesContainer(text:'وى مصر ' ,image: ImagesManager.weLine,),
      ],
      ),
    );
  }
}



class ModifyOrganizerLinesContainer extends StatelessWidget {
  const ModifyOrganizerLinesContainer({super.key, required this.text, required this.image});
final String text;
final String image ;
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.symmetric(horizontal: 25.w,vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.borderGrey,width: 1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(

          children: [
            Image.asset(
              image,


            ),
            horizontalSpace(30),
            Text(
              text,
              style: StylesManager.font16MorePurpleMedium,
            ),

          ],
        ),
      ),
    );
  }
}
