
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_appbar.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_list_country.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              OnboardingTwoAppbar(),
              Text(
                'إلى أين ترسل تعبئة شحن ؟',
                style: StylesManager.font30White500.copyWith(fontSize: 24.sp),
              ),
              verticalSpace(10),
              OnboardingTwoMainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
class OnboardingTwoMainContainer extends StatelessWidget {
  const OnboardingTwoMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 420.h,
      decoration: BoxDecoration(
        color:ColorManager.white ,

      ),
      child: Column(
        children: [
          verticalSpace(23),
          Text('البلدان الشعبية',style: StylesManager.font24DartPurpleBold,),
          verticalSpace(23),
          OnboardingTwoRowCountries(),
          OnboardingTwoTextFormField(),
          Padding(
            padding:  EdgeInsets.only(left: 270.0.w),
            child: Text('جميع البلدان',style: StylesManager.font14DarkPurpleBold,),
          ),
      
      
      
          OnboardingTwoListCountry(),
        ],
      ),
    );
  }
}



class OnboardingTwoRowCountries extends StatelessWidget {
  const OnboardingTwoRowCountries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingTwoColumnFlagWithWord(text: 'مصر', image: ImagesManager.egypt,),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'السعودية', image: ImagesManager.sudia,),
        horizontalSpace(50),
        OnboardingTwoColumnFlagWithWord(text: 'الفلبين', image:  ImagesManager.falbin,),
      ],
    );
  }
}


class OnboardingTwoColumnFlagWithWord extends StatelessWidget {
  const OnboardingTwoColumnFlagWithWord({super.key, required this.text, required this.image});
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(11),
        Text(text,style: StylesManager.font22DartPurpleRegular,)
      ],
    );
  }
}

