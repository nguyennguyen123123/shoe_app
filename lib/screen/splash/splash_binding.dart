import 'package:get/get.dart';
import 'package:shoe_project_app/screen/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(),
    );
  }
}
