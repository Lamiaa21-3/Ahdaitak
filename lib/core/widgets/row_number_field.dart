import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import 'app_text_form_field.dart';
const List<String> list = <String>['assets/images/eygpt.png', 'Two', 'Three', 'Four'];
class RowNumberField extends StatefulWidget {
  const RowNumberField({super.key});

  @override
  State<RowNumberField> createState() => _RowNumberFieldState();
}

class _RowNumberFieldState extends State<RowNumberField> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 100.0.h,right: 23.w,left: 23.w,bottom: 23.h,),
      child: Row(
        children: [

          Expanded(child: AppTextFormField(hintText:'+20',validator: (value){},),),
          Container(
            width: 100.w,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              border: Border.all(color: ColorManager.grey,width: 1,),
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
              items: list.map<DropdownMenuItem<String>>((String value) {
                // Check if value looks like an image path
                bool isImage = value.endsWith('.png') || value.endsWith('.jpg') || value.endsWith('.jpeg');

                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 8),
                    child: isImage
                        ? Image.asset(value, width: 32, height: 32) // or use Row to add text
                        : Text(value),
                  ),
                );
              }).toList(),
            )

            // child: Image.asset('name'),

          ),
        ],
      ),
    );
  }
}