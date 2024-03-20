import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';
import 'package:movietestapp/Models/movie.dart';
import 'package:movietestapp/Models/movie_class.dart';

class CardMovies extends StatelessWidget {
  final MovieClass? carruselMovies;
  const CardMovies({super.key, required this.carruselMovies});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => SizedBox(
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                    onTap: () {
                      _.goToMovieDetails(carruselMovies!);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            carruselMovies!.title,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(carruselMovies!.year.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    )),
              ),
            ));
  }
}
