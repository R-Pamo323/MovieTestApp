import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movietestapp/Constants/app_strings.dart';
import 'package:movietestapp/Controllers/Login/login_controller.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/LogoMovies.png",
                        width: 250,
                        height: 250,
                      ),
                      const Text(
                        AppStrings.welcomeMovies,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          SocialLoginButton(
                              buttonType: SocialLoginButtonType.google,
                              onPressed: () {
                                _.signInWithGoogle();
                              }),
                          const SizedBox(height: 16),
                          SocialLoginButton(
                              buttonType: SocialLoginButtonType.facebook,
                              onPressed: () {}),
                          const SizedBox(height: 16),
                          //aqui se hace la validacion por plataforma
                          //en ios aparece el login con apple
                          if (Platform.isIOS)
                            SocialLoginButton(
                                buttonType: SocialLoginButtonType.apple,
                                onPressed: () {})
                        ],
                      )
                    ]),
              ),
            ));
  }
}
