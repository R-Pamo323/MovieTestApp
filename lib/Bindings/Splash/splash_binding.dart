import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
