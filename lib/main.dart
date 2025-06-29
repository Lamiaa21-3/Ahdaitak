import 'package:ahdydic/ahdydic_app.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/di/independency_injection.dart';
import 'core/network/api_services.dart';
import 'core/routing/app_router.dart';
import 'core/theming/color.dart';

void main() async{
  setupGetIt();
  final apiService = getIt<ApiService>();
  final authService = getIt<AuthService>();

  apiService.fetchData();
  authService.login();
  await ScreenUtil.ensureScreenSize();

  ////////
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: ColorManager.purple, // change this to match your app background
  //     statusBarIconBrightness: Brightness.light, // use Brightness.dark if background is light
  //   ),
  // );
  runApp(

    AhdydicApp(
      appRouter: AppRouter(),
    ),
  );
}
