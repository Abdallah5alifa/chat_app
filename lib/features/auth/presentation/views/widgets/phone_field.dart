import 'package:chat_app_task1/core/shared_widgets/textFornWidgets.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {

  final TextEditingController phoneController;
  const PhoneField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) { 
    return defaulTextFormWidget(
      type: TextInputType.number,
      controller: phoneController,
      label: 'Enter your phone',
      hint: 'Your phone',
      prefix: Icons.person,
      validate: (value){
        if(value!.isEmpty){
          return "Phone must be not empity";
        }else{
          return null;
          }
      }
    );
  }
}