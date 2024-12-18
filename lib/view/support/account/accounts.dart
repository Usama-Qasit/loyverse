


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,),
        backgroundColor: AppColors.bgColorBlue,
        title: const Text("Account",style: TextStyle(color: AppColors.btnColorWhite),),
      ),
      body:  Column(

        children: [
          GestureDetector(
              onTap: (){
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                );
              },
              child: Text("Delete account")),
        ],
      ),
    );
  }
}
