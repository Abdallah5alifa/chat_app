import 'package:chat_app_task1/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupButton extends StatelessWidget {

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const SignupButton({super.key, 
  required this.emailController, 
  required this.passwordController, 
  required this.onSuccess, 
  required this.nameController, 
  required this.phoneController
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up', 
      func: () { 
        
        if(nameController.text.isEmpty){
          displayToastMssg("Name is mandatory", context);
        }else if(!emailController.text.contains('@')){
          displayToastMssg('Email address isn\’t vaild',context);
        }else if(phoneController.text.isEmpty){
          displayToastMssg("Phone is mandatory", context);
        } else if(passwordController.text.isEmpty){
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