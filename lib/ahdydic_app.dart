import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/color.dart';

class AhdydicApp extends StatelessWidget {
  const AhdydicApp({super.key, required this.appRouter});
 final  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(

        supportedLocales: [
          Locale('en',''),
          Locale('ar',''),
        ],
        debugShowCheckedModeBanner:false,

        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingOneScreen,
      ),

    );
  }
}
