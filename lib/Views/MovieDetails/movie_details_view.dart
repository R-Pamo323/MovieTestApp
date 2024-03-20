import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/MovieDetails/movie_details_controller.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieDetailsController>(
        init: MovieDetailsController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                elevation: 0,
                centerTitle: true,
                title: Text(_.movie!.title),
                //title: Text(_.moviePopular!.title),
              ),
              body: Column(
                children: [
                  Text(_.movie!.title),
                  Text(_.movie!.year.toString()),
                  //Text(_.moviePopular!.title),
                  //Text(_.moviePopular!.year.toString()),
                ],
              ),
            ));
  }
}
