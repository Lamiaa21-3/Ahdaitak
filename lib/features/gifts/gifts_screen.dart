import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

const List<String> list = <String>[
  'assets/images/eygpt.png',
  'assets/images/afghnastin.png',
];

class GiftsScreen extends StatelessWidget {
  const GiftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff846C8E),
      body: Column(
        children: [
          verticalSpace(40),
          Stack(
            children: [Row(
              children: [
                Image.asset(ImagesManager.esim),
                Padding(
                  padding:  EdgeInsets.only(right: 40.0.w),
                  child: Image.asset(ImagesManager.bigoLive),
                ),
              ],
            )],
          ),

          GiftsMainContainer(),
          // Image.asset(ImagesManager.esim),
          // Positioned(
          //     right: 133.w,
          //  bottom: 500,
          //     child: Image.asset(ImagesManager.bigoLive),
          // ),
        ],
      ),
    );
  }
}

class GiftsMainContainer extends StatefulWidget {
  const GiftsMainContainer({super.key});

  @override
  State<GiftsMainContainer> createState() => _GiftsMainContainerState();
}

class _GiftsMainContainerState extends State<GiftsMainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 476.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          GiftsDropDown(),
          Text(
            S.of(context).couponsEgyptStartFrom,
            style: StylesManager.font20DarkPurpleMedium,
          ),
          verticalSpace(12),
          GiftsSubContainer(),
          verticalSpace(24),
          GiftsSubContainer(),
        ],
      ),
    );
  }
}

class GiftsSubContainer extends StatelessWidget {
  const GiftsSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 110.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorManager.grey, width: 1.w),
      ),
      child: Row(
        children: [
          Image.asset(ImagesManager.giftBigo),
          horizontalSpace(12),
          SizedBox(
            width: 140,
            child: Text(
              S.of(context).enjoyNonStopEntertainmentBigoLive,
              style: StylesManager.font14MorePurpleMedium,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          horizontalSpace(20),
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ColorManager.darkPurple,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: ColorManager.white,
                  size: 14,
                ),
                padding: EdgeInsets.zero, // 👈 Optional: removes extra padding
                constraints: BoxConstraints(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GiftsDropDown extends StatefulWidget {
  const GiftsDropDown({super.key});

  @override
  State<GiftsDropDown> createState() => _GiftsDropDownState();
}

class _GiftsDropDownState extends State<GiftsDropDown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 23.0.h, horizontal: 25.0.w),
      child: Row(
        children: [
          Text(
            S.of(context).gifts,
            style: StylesManager.font20DarkPurpleMedium,
          ),
          horizontalSpace(22),
          Container(
            width: 70.w,
            height: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: ColorManager.grey, width: 1),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 16,
              underline: Container(height: 0, color: Colors.white),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items:
                  list.map<DropdownMenuItem<String>>((String value) {
                    // Check if value looks like an image path
                    bool isImage =
                        value.endsWith('.png') ||
                        value.endsWith('.jpg') ||
                        value.endsWith('.jpeg');

                    return DropdownMenuItem<String>(
                      value: value,
                      child:
                          isImage
                              ? Padding(
                                padding: EdgeInsets.only(right: 8.0.w),
                                child: Image.asset(
                                  value,
                                  width: 25.w,
                                  height: 40.h,
                                ),
                              ) // or use Row to add text
                              : Text(value),
                    );
                  }).toList(),
            ),

            // child: Image.asset('name'),
          ),
        ],
      ),
    );
  }
}
