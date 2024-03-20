import 'package:get/get.dart';
import 'package:movietestapp/utils/bindings_utils.dart';
import 'package:movietestapp/utils/views_utils.dart';
import 'package:movietestapp/Routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    //Nos movilizamos entre las diferntes rutas
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBindings()),
    GetPage(
        name: AppRoutes.MOVIEDETAILS,
        page: () => const MovieDetailsView(),
        binding: MovieDetailsBinding()),
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding()),
  ];
}
