import 'package:chat_app_task1/core/shared_widgets/textFornWidgets.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {

  final TextEditingController passController;
  final VoidCallback toogleVisibility;
  final bool isPasswordVisibility;

  const PasswordField({
    super.key,
    required this.passController, 
    required this.toogleVisibility, 
    required this.isPasswordVisibility
    });

  @override
  Widget build(BuildContext context) {
    return defaulTextFormWidget(
      type: TextInputType.visiblePassword,
      controller: passController,
      label: 'Enter Your Password',
      hint: 'Your Password',
      prefix: Icons.lock,
      isObscure: !isPasswordVisibility,
      suffix: isPasswordVisibility ? Icons.visibility : Icons.visibility_off,
      pressed: toogleVisibility,
      // ignore: body_might_complete_normally_nullable
      validate: (value) {
        if(value!.isEmpty){
          return "Password is wrong";
        }else{
          null;
        }
      },
      );
  }
}