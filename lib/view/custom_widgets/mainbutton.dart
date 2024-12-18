// lib/custom_buttons.dart
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

// Custom registration button
class RegistrationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  final Color buttonColor;

  const RegistrationButton({
    required this.onPressed,
    required this.buttonTitle,
    required this.buttonColor,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.btnBgColorBlue,
        foregroundColor: AppColors.btnColorWhite,
        padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Makes the button rectangular
        ),
      ),
      child:  Text(
        buttonTitle,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

// Custom sign-in button
class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  final Color buttonColor;
  final Color buttonBgColor;

  const SignInButton({
    required this.onPressed,
    required this.buttonTitle,
    required this.buttonColor,
    required this.buttonBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: buttonColor,
        backgroundColor: buttonBgColor,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
        shape: const RoundedRectangleBorder(

          borderRadius: BorderRadius.zero, // Makes the button rectangular
        ),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
