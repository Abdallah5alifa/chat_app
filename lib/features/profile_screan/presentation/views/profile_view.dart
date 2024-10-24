import 'package:chat_app_task1/core/constants/assets_images.dart';
import 'package:chat_app_task1/core/shared_widgets/custom_button.dart';
import 'package:chat_app_task1/core/shared_widgets/textFornWidgets.dart';
import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:AppBar(
        title: Text('Profile'),
        leading: IconButton(
          onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (builder)=>HomeView()));
        }, 
        icon: Icon(Icons.arrow_back)),
      ) ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Center(
                child: Container(
                  child: const Stack(
                          clipBehavior: Clip.none,
                          children:[ 
                            CircleAvatar(
                              backgroundImage: AssetImage(AssetsImages.logoImage),
                              radius: 100,
                            ),
                          Positioned(
                            bottom: 0,
                            right: 35,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: ColorApp.secondryColor,
                              child: Icon(Icons.edit,
                              size: 18,
                              color: Colors.white,
                              ),
                              
                            ),
                          )
                          ]
                        ),
                ),
              ),
              const SizedBox(
                height: 50,
                child: Divider(),
              ),
              Text('Name',
              style: TextStyleApp().textStyle20.copyWith(color: Colors.grey[600]),
              ),
              const SizedBox(height: 15,),
              defaulTextFormWidget(
                type: TextInputType.text,
                ),
              const SizedBox(height: 15,),  
              Text('Phone',
              style: TextStyleApp().textStyle20.copyWith(color: Colors.grey[600]),
              ),
              const SizedBox(height: 15,),
              defaulTextFormWidget(
                type: TextInputType.text,
                ),  
              const SizedBox(height: 35,),
              CustomButton(text: 'Save', func: (){})  
          
            ],
          ),
        ),
      ),
    );
  }
}