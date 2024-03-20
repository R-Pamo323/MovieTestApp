import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';
import 'package:movietestapp/Views/Movies/Widgets/card_movies.dart';

class MoviesView extends StatelessWidget {
  //final Movie? gridMovies;
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder:
            (_) => /*Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CarouselSlider.builder(
                    itemCount: _.listMovieTrending?.length,
                    itemBuilder: (context, index, realIndex) {
                      final carruselMovies = _.listMovieTrending?[index];
                      return CardMovies(
                          carruselMovies: _.listMovieTrending?[index]);
                    },
                    options: CarouselOptions(
                      height: 150.0,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOut,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 4),
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(
                  height: 20,
                ),
              ],
            )*/
                Container(
                  child: MasonryGridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: _.listMoviePopular?.length,
                      itemBuilder: (context, index) {
                        final gridMovies = _.listMoviePopular?[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                              onTap: () {
                                //_.goToMovieDetails(_.listMovieTrending![index]);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _.listMoviePopular![index].title,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                        _.listMoviePopular![index].year
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              )),
                        );
                      }),
                ));
  }
}
