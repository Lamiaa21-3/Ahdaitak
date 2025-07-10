import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/row_number_field.dart';
import '../../../generated/l10n.dart';

const List<String> listGift = <String>[
  'assets/images/eygpt.png',
  'assets/images/afghnastin.png',
];

class GiftsDropDown extends StatefulWidget {
  const GiftsDropDown({super.key});

  @override
  State<GiftsDropDown> createState() => _GiftsDropDownState();
}

class _GiftsDropDownState extends State<GiftsDropDown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 23.0.h, horizontal: 25.0.w),
        child: Row(
          children: [
            Text(
              S.of(context).gifts,
              style: StylesManager.font20DarkPurpleMedium,
            ),
            horizontalSpace(22),
            GestureDetector(
              onTap: (){
                context.pushNamed(Routes.countriesScreen);
              },
              child: Container(
                width: 70.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: ColorManager.grey, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagesManager.egypt),

                   Icon(Icons.keyboard_arrow_down_outlined),

                ],
                ),
                // child: DropdownButton<String>(
                //   value: dropdownValue,
                //   icon: const Icon(Icons.keyboard_arrow_down),
                //   elevation: 16,
                //   underline: Container(height: 0, color: Colors.white),
                //   onChanged: (String? value) {
                //     context.pushNamed(Routes.countriesScreen);
                //   },
                //   items:
                //   list.map<DropdownMenuItem<String>>((String value) {
                //     // Check if value looks like an image path
                //     bool isImage =
                //         value.endsWith('.png') ||
                //             value.endsWith('.jpg') ||
                //             value.endsWith('.jpeg');
                //
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child:
                //       isImage
                //           ? Padding(
                //         padding: EdgeInsets.only(right: 8.0.w),
                //         child: Image.asset(
                //           value,
                //           width: 25.w,
                //           height: 40.h,
                //         ),
                //       ) // or use Row to add text
                //           : Text(value),
                //     );
                //   }).toList(),
                // ),

                // child: Image.asset('name'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
