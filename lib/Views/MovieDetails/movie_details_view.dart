import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
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
              ),
              body: Column(
                children: [
                  Text(_.movie!.title),
                  Text(_.movie!.year.toString()),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  LikeButton(),
                ],
              ),
            ));
  }
}
