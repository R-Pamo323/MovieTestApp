import 'package:movietestapp/Models/ids.dart';

class MovieClass {
  final String title;
  final int year;
  final Ids ids;

  MovieClass({
    required this.title,
    required this.year,
    required this.ids,
  });

  factory MovieClass.fromJson(Map<String, dynamic> json) => MovieClass(
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
