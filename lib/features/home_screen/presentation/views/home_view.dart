
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/home_appbar.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body:const HomeViewBody(),
      
    );
  }
}