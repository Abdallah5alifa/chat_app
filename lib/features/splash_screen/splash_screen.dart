import 'dart:async';

import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/core/themes/theme_styles.dart';
import 'package:chat_app_task1/features/auth/presentation/views/views_files/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

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
                  children: [
                    Image.asset(AssetsImages.logoImage,
                    height: 200,
                    width: 200,
                    ),
                    Text("WhatsUp",
                    style: TextStyleApp().textStyle30.copyWith(
                      color: Colors.green[600]
                    ),
                    ),
                    const SizedBox(height: 170,),
                     Text("The best chat app of this century",
                    style: TextStyleApp().textStyle22,
                    ),
                    const SizedBox(height: 60,),
                    const SizedBox(
                      height: 60,
                      child:  LoadingIndicator(
                      indicatorType: Indicator.ballClipRotate, /// Required, The loading type of the widget
                      colors:  [Colors.white],       /// Optional, The color collections
                      strokeWidth: 5,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                      pathBackgroundColor: Colors.green   /// Optional, the stroke backgroundColor
                                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}