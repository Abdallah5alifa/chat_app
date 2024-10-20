import 'package:chat_app_task1/core/themes/colors/colors.dart';
import 'package:chat_app_task1/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, 
    this.width, 
    this.height = 43, 
    this.backgroundColor, 
    this.textColor, 
    this.borderRadios, 
    this.fontSized, 
    required this.text, 
    required this.func, 
    this.isLoading = false, 
    this.svgPicture
    });

    final double? width;
    final double? height;
    final Color? backgroundColor;
    final Color? textColor;
    final BorderRadius? borderRadios;
    final double? fontSized;
    final String? text;
    final VoidCallback? func;
    final bool? isLoading;
    final Widget? svgPicture;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func, 
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorApp.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 43,vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadios ?? BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(text!,
                style: TextStyleApp().textStyle24.copyWith(
                  color: textColor??Colors.black,
                )
                ),
              )
            ],
          )),
      ),
    );
  }
}