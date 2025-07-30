
import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/features/modify_organizer/widgets/modify_organizer_main_container.dart';
import 'package:flutter/material.dart';

import '../../core/helper/spacing.dart';
import '../../core/theming/color.dart';

class ModifyOrganizerScreen extends StatelessWidget {
  const ModifyOrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 300.0),
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: ColorManager.white),
                  ),
                ),

                verticalSpace(50),
                ModifyOrganizerMainContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
