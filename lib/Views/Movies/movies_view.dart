import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';
import 'package:movietestapp/Views/Movies/Widgets/card_movies.dart';
import 'package:movietestapp/Views/Movies/Widgets/grid_movies.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * .9,
              child: Column(
                children: [
                  if (_.listMovieTrending!.isNotEmpty &&
                      _.listMovieTrending != null)
                    Flexible(
                      flex: 2,
                      child: CarouselSlider.builder(
                          itemCount: _.listMovieTrending?.length,
                          itemBuilder: (context, index, realIndex) {
                            return CardMovies(
                                carruselMovies:
                                    _.listMovieTrending?[index].movie);
                          },
                          options: CarouselOptions(
                            height: 150.0,
                            autoPlay: true,
                            autoPlayCurve: Curves.easeInOut,
                            enlargeCenterPage: true,
                            autoPlayInterval: const Duration(seconds: 4),
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                  if (_.listMoviePopular!.isNotEmpty &&
                      _.listMoviePopular != null)
                    Flexible(
                      flex: 9,
                      child: MasonryGridView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          scrollDirection: Axis.vertical,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: _.listMoviePopular?.length,
                          itemBuilder: (context, index) {
                            return GridMovies(
                              gridMovies: _.listMoviePopular?[index],
                            );
                          }),
                    )
                ],
              ),
            ));
  }
}
