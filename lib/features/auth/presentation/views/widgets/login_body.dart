import 'package:chat_app_task1/features/auth/presentation/views/views_files/singup_view.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/pass_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/regester_row.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/home_view.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class LoginBody extends StatefulWidget {


   LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {

  TextEditingController emaillController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoWidget(),
                const SizedBox(height: 20,),
                const AuthTitle(
                  textTitle: 'Log in to your account',
                 ),
                const SizedBox(height: 20,),
                EmailField(emailController: emaillController,),
                const SizedBox(height: 20,),
                PasswordField(
                  passController: passwordController, 
                  toogleVisibility: (){
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  }, 
                  isPasswordVisibility: isPasswordVisible,
                  ),
                const SizedBox(height: 20,),
                LoginButton(
                  emailController: emaillController, 
                  passwordController: passwordController, 
                  onSuccess: (){
                    formKey.currentState!.validate();
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder:(context)=> const HomeView()));
                  },
                  ),
                const SizedBox(height: 20,),
                RegisterOrLogInRow(
                  textMsg: 'Don\’t have an account?',
                  textFunction: 'Register now',
                  func: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>const SingupScreen(),
                     ));
                  },
                )  
              ],
            ),
          ),
        ),
      ),
    );
  }
}