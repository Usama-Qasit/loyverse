


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors.dart';
import 'add_taxes.dart';

class TaxesScreen extends StatefulWidget {
  const TaxesScreen({super.key});

  @override
  State<TaxesScreen> createState() => _TaxesScreenState();
}

class _TaxesScreenState extends State<TaxesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnColorWhite,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
        title: const Text("Taxes",
          style: TextStyle(
            color: AppColors.btnColorWhite,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        backgroundColor: AppColors.btnBgColorBlue,
        iconTheme: const IconThemeData(color: AppColors.btnColorWhite),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[200],
                child: const Icon(Icons.percent,color: Colors.grey ,size: 100)),
            const SizedBox(height: 20),
            Text(
              'You have no printers yet',
              style: TextStyle(color: Colors.grey,fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Here you can connect your receipt\nprinter.',
              style: TextStyle(color: Colors.grey,fontSize: 16),
            ),
            TextButton(
              onPressed: () {
              },
              child: Text('Learn more'),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 60.0, // Adjust the width as needed
        height: 60.0, // Adjust the height as needed
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle, // Ensures the shape is circular
        ),
        child: IconButton(
          onPressed: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>AddTaxes()));

          },
          icon: const Icon(
            Icons.add,
            color: AppColors.btnColorWhite,
          ),
        ),
      ),
    );
  }
}
