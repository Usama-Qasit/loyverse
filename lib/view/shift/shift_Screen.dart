

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/colors/consts.dart';
import 'package:loyverse/view/custom_widgets/categories_button.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/custom_widgets/shift_button.dart';
import 'package:loyverse/view/shift/shift_history.dart';

import 'cash_management.dart';
import 'close_shift.dart';

class ShiftScreen extends StatefulWidget {
   ShiftScreen({super.key});

  @override
  State<ShiftScreen> createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          key: scaffoldKey,
          backgroundColor: AppColors.btnBgColorBlue,
          title: const Text(
            "Shift",
            style: TextStyle(color: Colors.white, fontSize: 20),

          ),
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite),
          actions:  [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ShiftHistory()));
                  },
                  child: Icon(Icons.refresh, color: Colors.white)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ShiftButton(
                    buttonTitle: "SHIFT MANAGEMENT",
                    buttonColor: AppColors.btnColorWhite,
                    buttonBgColor: AppColors.bgColorBlue,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>const CashManagement()));
                    }),
                SizedBox(height: 15),
                ShiftButton(
                    buttonTitle: "CLOSE SHIFT",
                    buttonColor: AppColors.btnColorWhite,
                    buttonBgColor: AppColors.bgColorBlue,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> CloseShiftScreen()));
                    }),


                const SizedBox(height: 15),
                // Shift Information
                const Text("Shift number: 3", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text to start
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text vertically
                  children: [
                    Text(
                      "Shift opened:\nOwner",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 10), // Space between the two texts
                    Text(
                      "12/16/24 10:58",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),


                // const Text("Owner", style: TextStyle(fontSize: 16)),

                const SizedBox(height: 12),
                Divider(color: Colors.grey[300]),


                const SizedBox(height: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    const Text(
                      "Cash drawer",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: AppColors.btnBgColorBlue,),
                    ),
                    _buildRow("Starting cash", "Rs0.00"),
                    _buildRow("Cash payments", "Rs0.00"),
                    _buildRow("Cash refunds", "Rs0.00"),
                    _buildRow("Paid in", "Rs0.00"),
                    _buildRow("Paid out", "Rs0.00"),
                    _buildRow("Expected cash amount", "Rs0.00", isBold: true),
                  ],
                ),
                Divider(color: Colors.grey[300]),
                SizedBox(height: 8,),

                Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sales summary",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.btnBgColorBlue,),
                    ),
                    _buildRow("Gross sales", "Rs0.00", isBold: true),
                    _buildRow("Refunds","Rs0.00" ),
                    _buildRow("Discounts", "Rs0.00"),
                  ],
                ),
                Divider(color: Colors.grey[300]),

                Column(
                  spacing: 15,
                  children: [
                    _buildRow("Net sales", "Rs0.00", isBold: true),
                    _buildRow("Taxes", "Rs0.00",),
                  ],
                ),
                Divider(color: Colors.grey[300]),
                _buildRow("Total Tendered", "Rs0.00", isBold: true),

              ],
            ),
          ),
        ),
        drawer: drawer(),
      ),
    );
  }

  Widget _buildRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
