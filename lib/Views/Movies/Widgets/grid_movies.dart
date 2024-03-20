import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';
import 'package:movietestapp/Models/movie_class.dart';

class GridMovies extends StatelessWidget {
  final MovieClass? gridMovies;
  const GridMovies({super.key, this.gridMovies});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                  onTap: () {
                    _.goToMovieDetails(gridMovies!);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          gridMovies!.title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          gridMovies!.year.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
            ));
  }
}
