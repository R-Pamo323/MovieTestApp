import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movietestapp/Models/movie.dart';
import 'package:movietestapp/Models/movie_class.dart';
//import 'package:movietestapp/Models/movie_popular.dart';

class TrackApi {
  final String url;
  const TrackApi({required this.url});

  Future<List<Movie>> getData() async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'trakt-api-version': '2',
      'trakt-api-key':
          'fa891380fa56cac118ed72114a122247119a22e564be5890e170276d50065467'
    };

    final response = await http.get(Uri.parse(url), headers: requestHeaders);

    if (response.statusCode != 200) {
      throw http.ClientException("Error in the connection");
    }
    return List<Movie>.from(
        jsonDecode(response.body).map((x) => Movie.fromJson(x)));
  }

  /*Future<List<MoviePopular>> getMoviePopular() async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'trakt-api-version': '2',
      'trakt-api-key':
          'fa891380fa56cac118ed72114a122247119a22e564be5890e170276d50065467'
    };

    final response = await http.get(Uri.parse(url), headers: requestHeaders);

    if (response.statusCode != 200) {
      throw http.ClientException("Error in the connection");
    }
    return List<MoviePopular>.from(
        jsonDecode(response.body).map((x) => MoviePopular.fromJson(x)));
  }*/
  Future<List<MovieClass>> getMovieClass() async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'trakt-api-version': '2',
      'trakt-api-key':
          'fa891380fa56cac118ed72114a122247119a22e564be5890e170276d50065467'
    };

    final response = await http.get(Uri.parse(url), headers: requestHeaders);

    if (response.statusCode != 200) {
      throw http.ClientException("Error in the connection");
    }
    return List<MovieClass>.from(
        jsonDecode(response.body).map((x) => MovieClass.fromJson(x)));
  }
}
