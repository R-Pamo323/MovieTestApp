import 'package:get/get.dart';
import 'package:movietestapp/Models/movie.dart';

class MovieDetailsController extends GetxController {
  Movie? movie;

  @override
  void onInit() {
    movie = Get.arguments;
    super.onInit();
  }
}
