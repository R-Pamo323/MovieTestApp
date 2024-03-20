import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Data/Providers/track_api.dart';
import 'package:movietestapp/Models/movie.dart';
import 'package:movietestapp/Models/movie_class.dart';
import 'package:movietestapp/Routes/app_routes.dart';
import 'package:movietestapp/Views/Movies/movies_view.dart';
import 'package:movietestapp/Views/Profiles/profile_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  Widget childView = const MoviesView();
  int tabIndex = 0;
  List<Movie>? listMovieTrending = [];
  List<MovieClass>? listMoviePopular = [];
  User? infoUser;
  TextEditingController tfName = TextEditingController();
  TextEditingController tfEmail = TextEditingController();
  DatabaseReference? dbUsersReference;
  SharedPreferences? prefs;

  @override
  void onInit() {
    //Traemos los argumentos del Usuario que creamos
    infoUser = Get.arguments;
    tfName.text = infoUser!.displayName!;
    tfEmail.text = infoUser!.email!;
    dbUsersReference = FirebaseDatabase.instance.ref('usuarios');

    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    listMovieTrending =
        await const TrackApi(url: "https://api.trakt.tv/movies/trending")
            .getData();
    listMoviePopular =
        await const TrackApi(url: "https://api.trakt.tv/movies/popular")
            .getMovieClass();
    saveDataInDatabase();
    prefs = await SharedPreferences.getInstance();
    update();
  }

  // Utilizamos para cambiar la vista entre Movies y Perfil
  void changeView(int index) {
    switch (index) {
      case 0:
        childView = const MoviesView();
        tabIndex = index;
        break;
      case 1:
        childView = const ProfileView();
        tabIndex = index;
        break;
    }
    update();
  }

  saveDataInDatabase() async {
    /* var uuid = Uuid();
      var v1 = uuid.v1();*/
    await dbUsersReference?.set({
      "name": infoUser!.displayName,
      "email": infoUser!.email,
      "photo": infoUser!.photoURL
    });
    prefs = await SharedPreferences.getInstance();
    await prefs?.setString('nombre', infoUser!.displayName!);
    await prefs?.setString('email', infoUser!.email!);
  }

  //Utilizamos para que nos envie la información de la pelicula a nuestra vista de MoviesDetails
  void goToMovieDetails(MovieClass carruselMovies) async {
    Get.toNamed(AppRoutes.MOVIEDETAILS, arguments: carruselMovies);
  }
}
