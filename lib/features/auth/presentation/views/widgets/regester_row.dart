import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterOrLogInRow extends StatelessWidget {

  final String textMsg;
  final String textFunction;
  VoidCallback func;

   RegisterOrLogInRow({super.key, required this.textMsg, required this.textFunction, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          //'Don\’t have an account?',
          textMsg,
          style:const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: (){
            func();
            // Navigator.push(context,
            //  MaterialPageRoute(builder: (context)=>const SingupScreen(),
            //  ));
          }, 
          child:Text(
            //'Register now',
            textFunction,
            style: TextStyleApp().textStyle14.copyWith(color: ColorApp.primaryColor),
          ))
      ],
    );
  }
}