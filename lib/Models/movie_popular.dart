import 'package:movietestapp/Models/ids.dart';

class MoviePopular {
  final String title;
  final int year;
  final Ids ids;

  MoviePopular({
    required this.title,
    required this.year,
    required this.ids,
  });

  factory MoviePopular.fromJson(Map<String, dynamic> json) => MoviePopular(
        title: json["title"],
        year: json["year"],
        ids: Ids.fromJson(json["ids"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "year": year,
        "ids": ids.toJson(),
      };
}
