import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
