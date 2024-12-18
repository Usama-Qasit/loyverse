



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/registration_screen.dart';
import 'package:loyverse/view/signIn_screen.dart';


import 'custom_widgets/mainbutton.dart';

class Mainscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            // Top green section
            Container(
              height: 433,
                color: AppColors.btnBgColorBlue,
                child:  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                      const SizedBox(height: 2),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'VISION',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'P O I N T  O F  S A L E',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Bottom white section
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.btnColorWhite,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      RegistrationButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => RegistrationScreen(),
                            ),
                            );
                          },
                          buttonTitle: "REGISTRATION",
                          buttonColor: AppColors.btnBgColorBlue),

                      SizedBox(height: 20),
                      SignInButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                            );
                          },
                          buttonTitle: "SIGN IN",
                          buttonColor: AppColors.btnBgColorBlue,
                      buttonBgColor: AppColors.btnColorWhite,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
