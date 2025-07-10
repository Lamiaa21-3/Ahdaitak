import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import 'app_text_form_field.dart';
const List<String> list = <String>['assets/images/eygpt.png', 'assets/images/afghnastin.png',];
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
      padding:  EdgeInsets.symmetric(horizontal: 19.0),
      child: Row(
        children: [
          Container(
            width: 100.w,
            height: 56, // تقليل الارتفاع
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              border: Border.all(color: ColorManager.lightGrey, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0,top: 12),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 16,
                isDense: true, // يقلل المسافة الداخلية
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
                    child: isImage
                        ? Image.asset(value, width: 32, height: 32)
                        : Text(value),
                  );
                }).toList(),
              ),
            ),
          ),


          Expanded(child: AppTextFormField(hintText:'20+',validator: (value){},),),

        ],
      ),
    );
  }
}