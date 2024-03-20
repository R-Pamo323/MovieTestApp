import 'package:get/get.dart';
import 'package:movietestapp/Bindings/Home/home_binding.dart';
import 'package:movietestapp/Bindings/Login/login_binding.dart';
import 'package:movietestapp/Bindings/MovieDetails/movie_details_binding.dart';
import 'package:movietestapp/Routes/app_routes.dart';
import 'package:movietestapp/Views/Home/home_view.dart';
import 'package:movietestapp/Views/Login/login_page_view.dart';
import 'package:movietestapp/Views/MovieDetails/movie_details_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const Login(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBindings()),
    GetPage(
        name: AppRoutes.MOVIEDETAILS,
        page: () => const MovieDetailsView(),
        binding: MovieDetailsBinding()),
  ];
}
