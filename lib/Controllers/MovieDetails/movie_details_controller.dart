import 'package:get/get.dart';
import 'package:movietestapp/Models/movie_class.dart';

class MovieDetailsController extends GetxController {
  MovieClass? movie;

  @override
  void onInit() {
    movie = Get.arguments;

    super.onInit();
  }
}
