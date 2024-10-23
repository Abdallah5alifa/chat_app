import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
AppBar HomeAppbar(){
  return AppBar(
    title: Text(
      'WhatsUp',
      style: TextStyleApp().textStyle24,
      ),
    actions: [
      IconButton(
        onPressed: (){}, 
        icon:const Icon(Icons.search),
        ),
      PopupMenuButton(
        onSelected: (value) {
          // your logic
        },
        itemBuilder: (BuildContext bc) {
          return const [
            PopupMenuItem(
              child: Text("New Group"),
              //value: '/hello',
            ),
            PopupMenuItem(
              child: Text("Profile"),
              //value: '/about',
            ),
            PopupMenuItem(
              child: Text("Setting"),
              //value: '/contact',
            )
          ];
        },
      )
          ], 
  );
}