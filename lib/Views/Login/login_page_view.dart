import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movietestapp/Data/Providers/track_api.dart';
import 'package:movietestapp/Models/movie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<Movie> listMovie = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Movies",
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () async {
                  listMovie = await TrackApi(
                          url: "https://api.trakt.tv/movies/trending")
                      .getData();
                },
                child: Text("Traer Peliculas Trending")),
            if (listMovie.isNotEmpty)
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: listMovie?.length ?? 0,
                itemBuilder: (context, index) {
                  final item = listMovie?[index];
                  return Text(item!.movie.title.toString());
                },
              ),
            TextButton(
                onPressed: () async {
                  Map<String, String> requestHeaders = {
                    'Content-type': 'application/json',
                    'trakt-api-version': '2',
                    'trakt-api-key':
                        'fa891380fa56cac118ed72114a122247119a22e564be5890e170276d50065467'
                  };

                  var url2 = Uri.parse("https://api.trakt.tv/movies/popular");
                  var rpta2 = await http.get(url2, headers: requestHeaders);
                  print(rpta2.body);
                },
                child: Text("Traer Peliculas Popular"))
          ],
        ));
  }
}
