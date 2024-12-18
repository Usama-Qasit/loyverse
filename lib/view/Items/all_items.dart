

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';

import 'create_items.dart';

class allItemsScreen extends StatefulWidget {
  const allItemsScreen({super.key});

  @override
  State<allItemsScreen> createState() => _allItemsScreenState();
}



class _allItemsScreenState extends State<allItemsScreen> {

  String dropdownValue = 'All Items';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          leading:GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
          title: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down, color: AppColors.btnColorWhite),
              iconSize: 24,
              elevation: 16,
              style:  const TextStyle(color: AppColors.btnColorWhite,fontSize: 20,fontWeight: FontWeight.w500),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },

              items: <String>['All Items', 'Item 1', 'Item 2', 'Item 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: const TextStyle(color: Colors.black),),
                );
              }).toList(),
            ),
          ),
          backgroundColor: AppColors.btnBgColorBlue,
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite),

          actions: [
            IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.search,color:AppColors.btnColorWhite,),
            ),
            SizedBox(width: 5,),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                color: Colors.grey[300], // Placeholder for image
              ),
              title: Text('Ice cream'),
              subtitle: Text('-'),
              trailing: Text('Rs150.00',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateItemScreen()));
            },
            icon: const Icon(
              Icons.add,
              color: AppColors.btnColorWhite,
            ),
          ),
        ),

        drawer: drawer(),

    );
  }
}
