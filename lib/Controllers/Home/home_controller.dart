import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Data/Providers/track_api.dart';
import 'package:movietestapp/Models/movie.dart';
import 'package:movietestapp/Views/Movies/movies_view.dart';
import 'package:movietestapp/Views/Profiles/profile_view.dart';

class HomeController extends GetxController {
  Widget childView = MoviesView();
  List<Movie>? listMovie = [];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    listMovie =
        await TrackApi(url: "https://api.trakt.tv/movies/trending").getData();
    update();
  }

  void changeView(int index) {
    switch (index) {
      case 0:
        childView = MoviesView();
        break;
      case 1:
        childView = ProfileView();
        break;
    }
    update();
  }
}
