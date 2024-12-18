



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/shift_button.dart';

class CashManagement extends StatelessWidget {
  const CashManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnColorWhite,
      appBar:AppBar(
        backgroundColor: AppColors.btnBgColorBlue,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
        title:  const Text("Cash management",style: TextStyle(
            color: AppColors.btnColorWhite,
            fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              keyboardType: TextInputType.number,
              cursorColor: AppColors.btnBgColorBlue,
              decoration:  InputDecoration(
                labelText: 'Amount',
                labelStyle: TextStyle(color: Colors.grey),
                floatingLabelStyle: TextStyle(color: AppColors.btnBgColorBlue),
                contentPadding: EdgeInsets.symmetric(vertical: 0,),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            const Row(
              children: [
                Expanded(
                  child: TextField(

                    decoration:  InputDecoration(
                        labelText: 'Comment',
                        labelStyle: TextStyle(color: Colors.grey),
                        floatingLabelStyle: TextStyle(color: AppColors.btnBgColorBlue),
                        contentPadding: EdgeInsets.symmetric(vertical: 0,),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.btnBgColorBlue,width: 2.0),
                        )
                    ),
                  ),
                ),
                SizedBox(width: 8.0),


              ],
            ),
            const SizedBox(height: 22),

            CashButton(
                buttonTitle: "PAY IN",

                buttonBgColor: AppColors.btnColorWhite,
                onPressed: (){
                }),
            SizedBox(height: 15,),

            CashButton(
                buttonTitle: "PAY OUT",

                buttonBgColor: AppColors.btnColorWhite,
                onPressed: (){
                }),
          ],
        ),
      ),
    );
  }
}
