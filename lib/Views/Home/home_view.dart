import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                elevation: 0,
                centerTitle: true,
                title: Text("My Movies"),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: 0,
                onTap: (value) {
                  _.changeView(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.movie), label: "Movie"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Perfil")
                ],
              ),
              body: _.childView,
            ));
  }
}
