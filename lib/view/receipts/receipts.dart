

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';

import '../../colors/colors.dart';

class ReceiptsScreen extends StatefulWidget {
  const ReceiptsScreen({super.key});

  @override
  State<ReceiptsScreen> createState() => _ReceiptsScreenState();
}


class Receipt {
  final String amount;
  final String date;
  final String time;
  final String transactionType;
  final String receiptNumber;

  Receipt({
    required this.amount,
    required this.date,
    required this.time,
    required this.transactionType,
    required this.receiptNumber,
  });
}

class _ReceiptsScreenState extends State<ReceiptsScreen> {


  final List<Receipt> receipts = [
    Receipt(
      amount: "Rs150.00",
      date: "Tuesday, December 17, 2024",
      time: "10:04 AM",
      transactionType: "Refund",
      receiptNumber: "#1-1004",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          title: const Text("Receipts",style: TextStyle(
            color: AppColors.btnColorWhite,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          ),
          backgroundColor: AppColors.btnBgColorBlue,
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite),
        ),
        body:   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                  cursorColor: AppColors.bgColorBlue,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search,),
                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.close),
                    ),
                  ),
                ),
              const Divider(height: 1,color: AppColors.darkGreyColor,),
               SizedBox(height: 10,),

               const Text("Tuesday,December 17,2024",
                style: TextStyle(
                    color: AppColors.bgColorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10,),
              const Divider(height: 1,color: AppColors.darkGreyColor,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("usama"),
                      Text("usama")
                    ],
                  ),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("usama"),
                  Text("usama")
                ],
              ),

                  Divider(height: 1,color: AppColors.darkGreyColor,),
                  // Expanded(
                  //   child: ListView.builder(
                  //     itemCount: receipts.length,
                  //     itemBuilder: (context, index) {
                  //       final receipt = receipts[index];
                  //       return ListTile(
                  //         leading: Icon(Icons.receipt),
                  //         title: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //
                  //                 Text(receipt.amount, style: TextStyle(fontSize: 12)),
                  //             Text(receipt.amount, style: TextStyle(fontSize: 12)),
                  //           ],
                  //         ),
                  //
                  //
                  //
                  //
                  //         onTap: () {
                  //
                  //         },
                  //
                  //
                  //       );
                  //
                  //     },
                  //
                  //   ),
                  // ),


            ],
          ),
        ),
        drawer: drawer(),
      ),
    );
  }
}
