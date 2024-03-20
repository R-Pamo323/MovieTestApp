import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Controllers/Home/home_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Container(
              child: Text("Soy el Profile"),
            ));
  }
}
