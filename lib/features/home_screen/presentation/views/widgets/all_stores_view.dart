import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:flutter/material.dart';

class AllStoresView extends StatelessWidget {
  const AllStoresView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder:(context,index){
          return const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AssetsImages.logoImage),
                radius: 30,
              ),
              title: Text('Khalifa'),
              subtitle: Text('Today, 12.30'),
            );
        } ,
        ),
    );
  }
}