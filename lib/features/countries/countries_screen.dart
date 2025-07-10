import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/features/countries/widgets/countries_appbar.dart';
import 'package:ahdydic/features/countries/widgets/countries_main_countainer.dart';
import 'package:flutter/material.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: SafeArea(
        child: ListView(
          children: [
            CountriesAppbar(),
            verticalSpace(30),
            CountriesMainContainer(),
          ],
        ),
      ),
    );
  }
}
