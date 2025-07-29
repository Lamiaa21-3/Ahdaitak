

import 'package:ahdydic/features/message_box/widgets/message_box_main_container.dart';
import 'package:flutter/material.dart';

import '../../core/theming/color.dart';
import '../../core/widgets/custom_appbar.dart';

class MessageBoxScreen extends StatelessWidget {
  const MessageBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            CustomAppbar(text: 'صندوق الرسائل'),
            MessageBoxMainContainer(),
          ],
        ),
      ),
    );
  }
}
