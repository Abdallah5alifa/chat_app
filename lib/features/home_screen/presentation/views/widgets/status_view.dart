import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/all_stores_view.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/widgets/mystatus_bottom.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const MyStatusBottom(),
        Padding(
          padding:const EdgeInsets.all(10),
          child: Text("Recent updates",
          style: TextStyleApp().textStyle14.copyWith(fontSize: 18),
          ),
        ),
        const AllStoresView(),
        Padding(
          padding:const EdgeInsets.all(25),
          child: Text("Viewed updates",
          style: TextStyleApp().textStyle14.copyWith(fontSize: 18),
          ),
        ),
        const AllStoresView(),
    
    
      ],
    ),
    );
  }
}