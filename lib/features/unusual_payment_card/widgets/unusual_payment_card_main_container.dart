import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnusualPaymentCardMainContainer extends StatelessWidget {
  const UnusualPaymentCardMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: ListView(

        children: [
          Column(
            children: [
              verticalSpace(40),
              Image.asset(ImagesManager.shecduleBackGround),
              verticalSpace(40),
              Text(
                'عذرا. هذا المنتج غير متوفر حاليا',
                style: StylesManager.font18MorePopularBold,
              ),
              verticalSpace(15),
              Text(
                'يرجى المحاولة مرة اخرى لاحقا',
                style: StylesManager.font18PinkMedium,
              ),
              verticalSpace(111),
              CustomButton(
              onTap: (){
          context.pushNamed(Routes.itemCardsScreen);
              },
                  text:'اختر بطاقة اخرى' , backgroundColor: ColorManager.purple),
            ],
          ),
        ],
      ),
    );
  }
}
