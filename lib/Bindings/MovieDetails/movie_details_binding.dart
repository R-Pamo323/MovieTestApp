import 'package:get/get.dart';
import 'package:movietestapp/Controllers/MovieDetails/movie_details_controller.dart';

class MovieDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailsController());
  }
}
