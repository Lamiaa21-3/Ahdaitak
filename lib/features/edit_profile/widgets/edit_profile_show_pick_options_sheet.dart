import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/styles.dart';

class EditProfileShowPickOptionsSheet extends StatefulWidget {
  const EditProfileShowPickOptionsSheet({super.key});

  @override
  State<EditProfileShowPickOptionsSheet> createState() =>
      _EditProfileShowPickOptionsSheetState();
}

class _EditProfileShowPickOptionsSheetState
    extends State<EditProfileShowPickOptionsSheet> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    Navigator.pop(context); // إغلاق الـ bottom sheet
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Widget _buildOption({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: ColorManager.lighterGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: ColorManager.purple),
            horizontalSpace(5),
            Text(text, style: StylesManager.font16MorePurpleMedium),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildOption(
            icon: Icons.camera_alt,
            text: "التقاط صورة",
            onTap: () => _pickImage(ImageSource.camera),
          ),
          verticalSpace(12),
          _buildOption(
            icon: Icons.image,
            text: "اختيار صورة",
            onTap: () => _pickImage(ImageSource.gallery),
          ),
        ],
      ),
    );
  }
}