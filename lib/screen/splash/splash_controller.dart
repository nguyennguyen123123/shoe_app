import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:shoe_project_app/routes/app_route_constant.dart';

class SplashController extends GetxController {
  SplashController();
  goToMainPage() async {
    FlutterNativeSplash.remove();
    // get theme from local
    loadTheme();
    loadLanguage();
    Get.offAllNamed(AppRoutes.HOME);
  }

  loadTheme() {
    // themeService.loadTheme();
  }

  loadLanguage() {
    // LocalizationService.loadLanguage();
  }

  @override
  void onInit() async {
    super.onInit();
    //await loadData();
    Future.delayed(Duration(seconds: 2), goToMainPage);
  }
}
