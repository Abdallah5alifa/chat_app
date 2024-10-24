import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:flutter/material.dart';

class ActionBottum extends StatelessWidget {
  const ActionBottum({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: ColorApp.primaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 5,
              offset:const Offset(0, 8),
            )
          ]
        ),
        child:const Icon(Icons.chat,
        color: Colors.white,
        ),
      ),
    );
  }
}