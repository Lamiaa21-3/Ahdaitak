import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../generated/l10n.dart';
import 'countries_sub_contauner.dart';

class CountriesMainContainer extends StatelessWidget {
  const CountriesMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 750.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: ColorManager.white,
          ),
          child: Column(
            children: [
              verticalSpace(30),
              CustomTextFormField(hintText: 'ابحث عن الدولة'),
              verticalSpace(8),
              Expanded(
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (_, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 27.0,
                        vertical: 4,
                      ),
                      child: Container(
                        height: 50.h,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorManager.white,
                          border: Border.all(
                            color: ColorManager.borderGrey,
                            width: 1,
                          ),
                        ),
                        child: Row(

                          children: [
                            horizontalSpace(10),
                            Image.asset(ImagesManager.egypt),
                            horizontalSpace(10),
                            Text(
                              'جمهورية مصر العربية',
                              style: StylesManager.font14PinkRegular.copyWith(
                                color: ColorManager.morePurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(top: -25, right: 0, left: 0, child: CountriesSubContainer()),
      ],
    );
  }
}
