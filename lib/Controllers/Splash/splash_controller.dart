import 'package:get/get.dart';
import 'package:movietestapp/Routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    //Damos una duracion de 3 segundos del SPLASH
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.LOGIN);
    });
    super.onReady();
  }
}
