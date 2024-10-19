import 'package:chat_app_task1/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const LoginButton({super.key, 
  required this.emailController, 
  required this.passwordController, 
  required this.onSuccess
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Log in', 
      func: () { 
        
        if(!emailController.text.contains('@')){
          displayToastMssg('Email address isn\’t vaild',context);
        }else if(passwordController.text.isEmpty){
          displayToastMssg("Password is mandatory", context);
        }else {
          onSuccess();
        }
       },

      

    );
  }
}

displayToastMssg(String msg ,BuildContext context){
  Fluttertoast.showToast(msg: msg);
}