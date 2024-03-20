import 'package:movietestapp/Models/movie_class.dart';

class Movie {
  final int watchers;
  final MovieClass movie;

  Movie({
    required this.watchers,
    required this.movie,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        watchers: json["watchers"],
        movie: MovieClass.fromJson(json["movie"]),
      );

  Map<String, dynamic> toJson() => {
        "watchers": watchers,
        "movie": movie.toJson(),
      };
}
