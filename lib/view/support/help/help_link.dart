


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

class HelpLink extends StatelessWidget {
  const HelpLink({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          backgroundColor: AppColors.bgColorBlue,
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: AppColors.btnColorWhite)),
          title: const Text("help.loyverse.com",style: TextStyle(color:AppColors.btnColorWhite),),
          actions: const [
            Icon(Icons.drive_folder_upload,color: AppColors.btnColorWhite ,),
            SizedBox(width: 10,),
          ]
        ),
        body: Column(),
      ),
    );
    
  }
}
