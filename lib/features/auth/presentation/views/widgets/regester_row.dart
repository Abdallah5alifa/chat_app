import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:chat_app_task1/features/auth/presentation/views/views_files/singup_view.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text(
          'Don\’t have an account?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context)=>const Singup(),
             ));
          }, 
          child:Text(
            'Register now',
            style: TextStyleApp().textStyle14.copyWith(color: ColorApp.primaryColor),
          ))
      ],
    );
  }
}