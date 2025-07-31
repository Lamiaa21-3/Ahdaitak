import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_button.dart';
import 'edit_profile_calendar_dialog.dart';
import 'edit_profile_text_form_field.dart';

class EditProfileItemMainContainer extends StatefulWidget {
  const EditProfileItemMainContainer({super.key});

  @override
  State<EditProfileItemMainContainer> createState() => _EditProfileItemMainContainerState();
}

class _EditProfileItemMainContainerState extends State<EditProfileItemMainContainer> {
  final TextEditingController _dateController = TextEditingController();

  void _openCalendarDialog() async {
    DateTime? selectedDate = await showDialog(
      context: context,
      builder: (_) => CalendarDialog(),
    );

    if (selectedDate != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(120),
          Text(
            'الاسم',
            style: StylesManager.font14PinkRegular.copyWith(
              color: ColorManager.purple,
            ),
          ),
          verticalSpace(5),
          EditProfileTextFormField(hintText: 'Enas Omar', validator: (v) {}),
          verticalSpace(30),
          Text(
            'تاريخ الميلاد',
            style: StylesManager.font14PinkRegular.copyWith(
              color: ColorManager.purple,
            ),
          ),
          verticalSpace(5),
          EditProfileTextFormField(
            controller: _dateController,
            prefixIcon: IconButton(
              onPressed: () {
                _openCalendarDialog();
              },
              icon: Icon(Icons.date_range_outlined),
            ),
            hintText: _dateController.text,
            validator: (v) {},
          ),
          verticalSpace(30),
          Text(
            'رقم الهاتف',
            style: StylesManager.font14PinkRegular.copyWith(
              color: ColorManager.purple,
            ),
          ),
          verticalSpace(5),
          EditProfileTextFormField(hintText: '01146574880', validator: (v) {}),
          verticalSpace(30),
          Text(
            'البريد الالكتروني',
            style: StylesManager.font14PinkRegular.copyWith(
              color: ColorManager.purple,
            ),
          ),
          verticalSpace(5),
          EditProfileTextFormField(
            prefixIcon: Icon(Icons.email),
            hintText: 'enas256@gmail.com',
            validator: (v) {},
          ),
          verticalSpace(50),
          CustomButton(
            text: 'حفظ',
            backgroundColor: ColorManager.purple,
            width: 341.w,
            height: 43.h,
          ),
        ],
      ),
    );
  }
}


