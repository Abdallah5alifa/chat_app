import 'dart:async';

import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/features/auth/presentation/views/views_files/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

      Timer(
            const Duration(seconds: 3),
                () =>
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>const LoginScreen())));


    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsImages.logoImage,
                    
                    height: 200,
                    width: 200,
                    ),
                    SizedBox(height: 150,),
                    const Text("The best chat app of this century")
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}