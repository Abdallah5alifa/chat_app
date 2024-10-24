import 'package:flutter/material.dart';

class HomeBottomNavbar extends StatelessWidget {
  const HomeBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.donut_large),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),      
      ],
    );
  }
}