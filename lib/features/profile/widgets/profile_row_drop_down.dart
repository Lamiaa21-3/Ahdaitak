



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../generated/l10n.dart';
const List<String> list = <String>['assets/images/eygpt.png', 'assets/images/afghnastin.png',];
class ProfileRowDropDown extends StatefulWidget {
  const ProfileRowDropDown({super.key});

  @override
  State<ProfileRowDropDown> createState() => _ProfileRowDropDownState();
}

class _ProfileRowDropDownState extends State<ProfileRowDropDown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).sendToEgypt,
          style: StylesManager.font14MorePurpleMedium,
        ),
        Spacer(),
        Container(
          width: 61.w,
          height: 29.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            border: Border.all(color: ColorManager.grey, width: 1),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            underline: Container(height: 0, color: Colors.white),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              bool isImage = value.endsWith('.png') || value.endsWith('.jpg') || value.endsWith('.jpeg');
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0.w),
                  child: isImage
                      ? Image.asset(value)
                      : Text(value),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

