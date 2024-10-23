import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/action_bottum.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/chats_view.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/home_bottom_navbar.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/status_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
       const Positioned(
          bottom: 85,
          right: 20,
          child: ActionBottum(),
        ),
        //const AllChats(),
        const StatusView(),
        Container(
          alignment: Alignment.bottomCenter,
          child:const HomeBottomNavbar()
          ),
      ],
    );
    // return const Column(
    //   children: [
    //     AllChats(),
    //     HomeBottomNavbar(),        
    //   ],
    // );
  }
}