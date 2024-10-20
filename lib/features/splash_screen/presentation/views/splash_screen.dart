import 'dart:async';

import 'package:chat_app_task1/features/auth/presentation/views/views_files/login_view.dart';
import 'package:chat_app_task1/features/splash_screen/presentation/views/widgets/splash_body.dart';
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


    return SplashBody();
  }

  
}