import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Constants/app_strings.dart';
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
                title: const Text(
                  AppStrings.movies,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _.tabIndex,
                onTap: (value) {
                  _.changeView(value);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.movie), label: AppStrings.movies),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: AppStrings.profile)
                ],
              ),
              body: _.childView,
            ));
  }
}
