import 'package:flutter/material.dart';
import 'package:movietestapp/Models/movie.dart';

class CardMovies extends StatelessWidget {
  final Movie? carruselMovies;
  const CardMovies({super.key, required this.carruselMovies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    carruselMovies!.movie.title,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(carruselMovies!.watchers.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
