


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors.dart';

class CreateCustomerDisplayScreen extends StatefulWidget {
  const CreateCustomerDisplayScreen({super.key});

  @override
  State<CreateCustomerDisplayScreen> createState() => _CreateCustomerDisplayScreenState();
}

class _CreateCustomerDisplayScreenState extends State<CreateCustomerDisplayScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  bool _useDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnColorWhite,
      appBar: AppBar(
        leading:  GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)
        ),
        backgroundColor: AppColors.btnBgColorBlue,
        title: const Text('Create customer display ',
          style: TextStyle(color: AppColors.btnColorWhite,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Text("SAVE",
              style: TextStyle(
                  color: AppColors.btnColorWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              cursorColor: AppColors.btnBgColorBlue,
              decoration:  const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.grey),
                floatingLabelStyle: TextStyle(color: AppColors.btnBgColorBlue),
                contentPadding: EdgeInsets.symmetric(vertical: 0,),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _valueController,
                    keyboardType: TextInputType.number,
                    decoration:  const InputDecoration(
                        labelText: 'Customer display id address ',
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
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.lightGreyColor, // Button background color
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // Makes the button rectangular
                    ),
                    side:  const BorderSide(color: AppColors.darkGreyColor, width: 1), // Border color and width
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20), // Button padding
                  ),
                  child: const Text(
                    "SEARCH",
                    style: TextStyle(
                      color: Colors.black, // Text color
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            const Text(
              'Leave the field blank to\nindicate the value upon sale',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            SizedBox(height: 10,),
            const Divider(height: 1,color: AppColors.darkGreyColor,),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: Text(
                    'Use dark theme',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Switch(
                  value: _useDarkTheme,
                  activeColor: AppColors.bgColorBlue,
                  onChanged: (value) {
                    setState(() {
                      _useDarkTheme = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10,),
            const Divider(height: 1,color: AppColors.darkGreyColor,),
            SizedBox(height: 10,),
             InkWell(
               onTap: (){},
               child: Container(
                 height: 50,
                 width: 350,
                 child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(width: 10,),
                    Text("PAIR",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),


                  ],
                             ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}












