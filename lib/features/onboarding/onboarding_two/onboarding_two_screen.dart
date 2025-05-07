
import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/onboarding/onboarding_two/widgets/onboarding_two_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkBlue,
      body: SafeArea(
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(23),
            Text('البلدان الشعبية',style: StylesManager.font24DartPurpleBold,),
            verticalSpace(23),
            OnboardingTwoRowCountries(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.0.w,vertical: 22.0.h),
              child: TextFormField(

                textAlign: TextAlign.right,

                validator: (value) {
                  return null;
                

                },

                style:  StylesManager.font17LightGrayRegular,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search_outlined,size: 20,),
                  hintText: 'بلد البحث',
                  isDense: true,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
                  focusedBorder:

                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: ColorManager.mainBlue,
                          width: 1,
                        ),
                      ),
                  errorBorder:

                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(color: Colors.red, width: 1),
                      ),
                  focusedErrorBorder:

                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(color: Colors.red, width: 1),
                      ),
                  enabledBorder:

                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: ColorManager.grey,
                          width: 1,
                        ),
                      ),
                  hintStyle:StylesManager.font23LightGrayRegular,
                  fillColor:  ColorManager.moreLightGray,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 270.0.w),
              child: Text('جميع البلدان',style: StylesManager.font14DarkPurpleBold,),
            ),
            ListView.separated(


                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(ImagesManager.sudia),
                  Text('سعودية',style: StylesManager.font17LightGrayRegular,),
                ],
              );
            }, separatorBuilder: (context,index){
              return Container(
                width: double.infinity,
                height: 1.h,
                color: ColorManager.grey,
              );
            }, itemCount: 12),
          ],
        ),
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

