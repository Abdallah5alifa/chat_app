import 'package:chat_app_task1/core/shared_widgets/textFornWidgets.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {

  final TextEditingController emailController;
  const EmailField({super.key,required this.emailController});

  @override
  Widget build(BuildContext context) {
    return defaulTextFormWidget(
      type: TextInputType.emailAddress,
      controller: emailController,
      label: 'Enter Your Email',
      hint: 'Your Email',
      prefix: Icons.email_outlined,
      validate: (value) {
        if(value!.isEmpty){
          return "Email must be not empity";
        }else{
          null;
        }
      },
      );
  }
}