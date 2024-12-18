import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';



class ShiftButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  final Color buttonColor;
  final Color buttonBgColor;

  const ShiftButton({
    required this.buttonTitle,
    required this.buttonColor,
    required this.buttonBgColor,
    required this.onPressed,


  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
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










class CashButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;

  final Color buttonBgColor;

  const CashButton({
    required this.buttonTitle,

    required this.buttonBgColor,
    required this.onPressed,


  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: buttonBgColor,
        side:  const BorderSide(color:AppColors.darkGreyColor),
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
              style:   const TextStyle(color: AppColors.darkGreyColor,fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}