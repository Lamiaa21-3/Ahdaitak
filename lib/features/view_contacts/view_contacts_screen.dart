import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_floating_action_button.dart';
import 'package:ahdydic/features/view_contacts/widgets/view_contacts_main_container.dart';
import 'package:flutter/material.dart';



class ViewContactsScreen extends StatelessWidget {
  const ViewContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 50.0),
          child: ViewContactsMainContainer(),
        ),
      ),
      floatingActionButton: ViewContactsFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}


