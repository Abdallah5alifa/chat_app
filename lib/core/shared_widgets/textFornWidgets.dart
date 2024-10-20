
import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:flutter/material.dart';

Widget defaulTextFormWidget({
  TextEditingController? controller,
  required TextInputType type,
  Function(String) ? onChange,
  FormFieldValidator ? validate,
  String? label,
  String? hint,
  IconData? prefix,
  IconData? suffix,
  bool isObscure = false,
  Function()? pressed,
  Function()? tap,
  bool? enable,
  }){
  return TextFormField(
    controller: controller,
    obscureText: isObscure,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(prefix),
      suffixIcon: suffix!=null ? IconButton(
        onPressed: pressed, 
        icon: Icon(suffix,),
        ) :null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder:const OutlineInputBorder(
        borderSide: BorderSide(color: ColorApp.primaryColor,width: 2.0)
      )  
    ),
    style: const TextStyle( fontSize: 24),
    keyboardType: type,
    validator: validate,
    onChanged: onChange,
    onTap: tap,
    enabled: enable,
  );
}