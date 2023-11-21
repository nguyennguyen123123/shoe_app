import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shoe_project_app/routes/app_route_constant.dart';
import 'package:shoe_project_app/screen/home/home_binding.dart';
import 'package:shoe_project_app/screen/home/home_page.dart';
import 'package:shoe_project_app/screen/splash/splash_binding.dart';
import 'package:shoe_project_app/screen/splash/splash_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
