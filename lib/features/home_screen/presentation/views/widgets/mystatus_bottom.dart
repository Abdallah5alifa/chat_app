import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:flutter/material.dart';

class MyStatusBottom extends StatelessWidget {
  const MyStatusBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Stack(
              clipBehavior: Clip.none,
              children:[ ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(AssetsImages.logoImage),
                  radius: 30,
                ),
                title: Text('My Status'),
                subtitle: Text('Tap to add status update'),
              ),
              Positioned(
                bottom: 6,
                left: 57,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: ColorApp.secondryColor,
                  child: Icon(Icons.add,
                  size: 18,
                  color: Colors.white,
                  ),
                  
                ),
              )
              ]
            ),
    );
  }
}