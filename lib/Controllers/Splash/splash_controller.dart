import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  SharedPreferences? pref;
  DatabaseReference? dbUsersReference;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    pref = await SharedPreferences.getInstance();
    dbUsersReference = FirebaseDatabase.instance.ref('usuarios');
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
