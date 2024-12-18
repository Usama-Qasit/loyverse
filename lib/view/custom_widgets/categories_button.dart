import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class CategoriesButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  final Color buttonColor;
  final Color buttonBgColor;

  const CategoriesButton({
    required this.onPressed,
    required this.buttonTitle,
    required this.buttonColor,
    required this.buttonBgColor,

  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){},
      style: OutlinedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: buttonBgColor,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 12),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2), // Makes the button rectangular
        ),
      ),
      child:   SizedBox(
        width: 200,
        
        height: 25,
        child: Center(
          child: FittedBox(
            fit:  BoxFit.scaleDown,
            child: Text(buttonTitle,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}