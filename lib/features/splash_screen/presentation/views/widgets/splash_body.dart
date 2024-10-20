import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

// ignore: non_constant_identifier_names
Scaffold SplashBody() {
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
                  style: TextStyleApp().textStyle24,
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