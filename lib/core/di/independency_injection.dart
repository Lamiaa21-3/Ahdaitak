



import 'package:get_it/get_it.dart';

import '../network/api_services.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<AuthService>(() => AuthService());
}
