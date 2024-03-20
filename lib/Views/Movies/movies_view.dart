import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';
import 'package:movietestapp/Views/Movies/Widgets/card_movies.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder:
            (_) => /*Container(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: _.listMovie?.length ?? 0,
                itemBuilder: (context, index) {
                  final item = _.listMovie?[index];
                  return Text(item!.movie.title.toString());
                },
              ),
            )*/
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    CarouselSlider.builder(
                        itemCount: _.listMovie?.length,
                        itemBuilder: (context, index, realIndex) {
                          final carruselMovies = _.listMovie?[index];
                          return CardMovies(
                              carruselMovies: _.listMovie?[index]);
                        },
                        options: CarouselOptions(
                          height: 150.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOut,
                          enlargeCenterPage: true,
                          autoPlayInterval: Duration(seconds: 4),
                          scrollDirection: Axis.horizontal,
                        ))
                  ],
                ));
  }
}
