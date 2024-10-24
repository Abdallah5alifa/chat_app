import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  final String textTitle;
  const AuthTitle({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: TextStyleApp().textStyle24,
    );
  }
}