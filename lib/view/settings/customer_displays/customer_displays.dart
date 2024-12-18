

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors.dart';
import 'create_customer_display.dart';

class CustomerDisplaysScreen extends StatefulWidget {
  const CustomerDisplaysScreen({super.key});

  @override
  State<CustomerDisplaysScreen> createState() => _CustomerDisplaysScreenState();
}

class _CustomerDisplaysScreenState extends State<CustomerDisplaysScreen> {
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
        title: const Text("Customer displays",
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
                child: const Icon(Icons.tablet_outlined,color: Colors.grey ,size: 100)),
            const SizedBox(height: 20),


            Text(
              'You have no customer displays yet',
              style: TextStyle(color: Colors.grey,fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Here you can connect your customer\ndisplay.',
              style: TextStyle(color: Colors.grey,fontSize: 16),
            ),
            TextButton(
              onPressed: () {
              },
              child: const Text(
                'Learn more',
                style: TextStyle(
                  decoration: TextDecoration.underline, // Adds underline
                  decorationColor: Colors.blue, // Sets the underline color
                  decorationThickness: 1.0, // Optional: Adjusts the thickness of the underline
                  color: AppColors.btnBgColorBlue, // Sets the text color
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),

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
                MaterialPageRoute(builder: (context)=>CreateCustomerDisplayScreen()));
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
