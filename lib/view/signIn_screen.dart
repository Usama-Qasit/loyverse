

import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/pin_screen.dart';
import 'package:loyverse/view/testing.dart';
import 'custom_widgets/extra_home_Screen.dart';
import 'custom_widgets/mainbutton.dart';
import 'forgetPassword.dart';
import 'homeScreen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColorBlue,
        title: const Text('Sign in',style: TextStyle(color: AppColors.btnColorWhite,fontWeight: FontWeight.w500),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
             const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility),
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: RegistrationButton(
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>  Homescreen(),
                      ),
                      );

                    },
                    buttonTitle: "SIGN IN",
                    buttonColor: AppColors.btnBgColorBlue),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                  );
                },
                child:  const Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
