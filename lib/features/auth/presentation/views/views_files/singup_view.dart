import 'package:chat_app_task1/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body: SignUpBody(),
    );
  }
}