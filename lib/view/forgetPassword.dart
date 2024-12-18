import 'package:flutter/material.dart';

import '../colors/colors.dart';
import 'custom_widgets/mainbutton.dart';


class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.btnBgColorBlue,
        title:  const Text('Forgot Password?',style: TextStyle(color:AppColors.btnColorWhite),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your email address to receive instructions to reset password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),

            SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: RegistrationButton(
                    onPressed: (){}, buttonTitle: "SEND", buttonColor: AppColors.btnBgColorBlue),
              ),
            ),

          ],
        ),
      ),
    );
  }
}