import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
