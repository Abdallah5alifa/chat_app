import 'package:chat_app_task1/features/auth/presentation/views/views_files/login_view.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/pass_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/regester_row.dart';
import 'package:chat_app_task1/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat_app_task1/features/home_screen/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {


   SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      child:Padding(padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const LogoWidget(),
               const AuthTitle(
                  textTitle: 'Sign Up to your account',
                ),
               const SizedBox(height: 20,),
               NameField(nameController:nameController),
               const SizedBox(height: 20,),
               EmailField(emailController: emailController,),
               const SizedBox(height: 20,),
               PhoneField(phoneController: phoneController),
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
               SignupButton(
                emailController: emailController, 
                passwordController: passwordController,  
                nameController: nameController, 
                phoneController: phoneController,
                onSuccess: (){
                    formKey.currentState!.validate();
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder:(context)=> const HomeView()));
                  },
                ),
                const SizedBox(height: 20,),
                RegisterOrLogInRow(
                  textMsg: 'Already have an account?',
                  textFunction: 'Login now',
                  func: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>const LoginScreen(),
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