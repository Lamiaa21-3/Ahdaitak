import 'package:ahdydic/ahdydic_app.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/di/independency_injection.dart';
import 'core/network/api_services.dart';
import 'core/routing/app_router.dart';

void main() async{
  setupGetIt();
  final apiService = getIt<ApiService>();
  final authService = getIt<AuthService>();

  apiService.fetchData();
  authService.login();
  await ScreenUtil.ensureScreenSize();
  runApp(

    AhdydicApp(
      appRouter: AppRouter(),
    ),
  );
}
