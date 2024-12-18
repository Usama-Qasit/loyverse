



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/shift_button.dart';

class CloseShiftScreen extends StatelessWidget {
  const CloseShiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnColorWhite,
      appBar: AppBar(
        leading:  const Icon(Icons.close,color: AppColors.darkGreyColor,),
        title: const Text("Close shift"),
        backgroundColor: Colors.white,
        elevation: 0, // Remove default shadow
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Thickness of the line
          child: Container(
            color: Colors.grey.shade300, // Line color
            height: 1.0, // Line height
          ),
        ),
      ),
      body:   Padding(
        padding: EdgeInsets.all(12),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Expected cash amount",style: TextStyle(color: Colors.black,fontSize: 16, ),),
                Text("Rs0.00",style: TextStyle(color: Colors.black,fontSize: 16, ),),
              ],
            ),
            SizedBox(height: 20,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Actual cash amount",style: TextStyle(color: Colors.black,fontSize: 16, ),),
                Text("Rs0.00",style: TextStyle(
                    color: AppColors.darkGreyColor,
                    fontSize: 16,
                ),
                ),
              ],
            ),
            const Divider(
              height: 1,
              color: Colors.black,
              indent: 230,
              endIndent: 0,

            ),
            SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Difference",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 16 ),),
                Text("Rs0.00",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 16 ),),
              ],
            ),
            SizedBox(height: 35),

            ShiftButton(
                buttonTitle: "CLOSE SHIFT",
                buttonColor: AppColors.btnColorWhite,
                buttonBgColor: AppColors.bgColorBlue,
                onPressed: (){}),

          ],
        ),
      ),
    );
  }
}
