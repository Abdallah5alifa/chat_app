import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
AppBar HomeAppbar(BuildContext context ){
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
          Navigator.pushNamed(context, value.toString());
        },
        itemBuilder: (BuildContext context) {
          return const [
            PopupMenuItem(
              child: Text("New Group"),
              //value: '/newgroub',
            ),
            PopupMenuItem(
              child: Text("Profile"),
              value: '/profile',
            ),
            PopupMenuItem(
              child: Text("Setting"),
              //value: '/setting',
            )
          ];
        },
      )
          ], 
  );
}