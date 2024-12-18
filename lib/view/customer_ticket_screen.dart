

import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/add_new_customer.dart';
import 'package:loyverse/view/testing.dart';

class AddCustomerTicketScreen extends StatelessWidget {
  const AddCustomerTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColorBlue,

        child: Scaffold(
          backgroundColor: AppColors.btnColorWhite,
          appBar: AppBar(
            title: InkWell(
              onTap: (){

              },
              child: const Text(
                'Add customer to ticket',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),
              ),
            ),
            backgroundColor: AppColors.btnColorWhite,
            leading: IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),


          ),
          body: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Divider(),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: '    Search',
                    hintStyle: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                  ),
                ),

                const Divider(),
                TextButton(
                  onPressed: () {
                    // Handle "Add New Customer" button press
                  },
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CreateCustomerScreen(),
                      ),
                      );
                    },
                    child: const Text(
                      'ADD NEW CUSTOMER',
                      style: TextStyle(
                        color: AppColors.btnBgColorBlue,
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                      ),
                    ),
                  ),
                ),
                const Divider(),

                const Text(
                  'Your most recent customers will show\n up here',
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
      ),
    );
  }
}


