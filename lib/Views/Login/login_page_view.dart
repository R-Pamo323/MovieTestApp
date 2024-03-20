import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  Map<String, String> requestHeaders = {
                    'Content-type': 'application/json',
                    'trakt-api-version': '2',
                    'trakt-api-key':
                        'fa891380fa56cac118ed72114a122247119a22e564be5890e170276d50065467'
                  };

                  var url = Uri.parse("https://api.trakt.tv/movies/trending");
                  var rpta = await http.get(url, headers: requestHeaders);
                  print(rpta.body);
                },
                child: Text("Traer Peliculas Trending")),
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
