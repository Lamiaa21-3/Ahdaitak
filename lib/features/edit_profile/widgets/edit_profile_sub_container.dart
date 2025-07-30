import 'dart:io';

import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/theming/images.dart';
import 'edit_profile_show_pick_options_sheet.dart';

class EditProfileSubContainer extends StatelessWidget {
  const EditProfileSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 107.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: ColorManager.borderGrey),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // shadow color
                spreadRadius: 1, // how much the shadow spreads
                blurRadius: 2, // how blurry the shadow is
                offset: Offset(0, 2), // changes position of shadow (x, y)
              ),
            ],
          ),
          child: Column(
            children: [
              verticalSpace(5),
              Image.asset(ImagesManager.girle),
              verticalSpace(3),
              Text('Enas Omar', style: StylesManager.font14MorePurpleMedium),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: ColorManager.borderGrey,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: ColorManager.white,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) => EditProfileShowPickOptionsSheet(),
                  );
                },
                child: Image.asset(ImagesManager.image),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


