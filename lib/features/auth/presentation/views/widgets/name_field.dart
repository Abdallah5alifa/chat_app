import 'package:chat_app_task1/core/shared_widgets/textFornWidgets.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {

  final TextEditingController nameController;
  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) { 
    return defaulTextFormWidget(
      type: TextInputType.text,
      controller: nameController,
      label: 'Enter your name',
      hint: 'Your name',
      prefix: Icons.person,
      validate: (value){
        if(value!.isEmpty){
          return "Name must be not empity";
        }else{
          return null;
          }
      }
    );
  }
}