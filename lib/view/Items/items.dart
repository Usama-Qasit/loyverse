


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/Items/all_items.dart';
import 'package:loyverse/view/custom_widgets/CustomAppBar.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/discounts/discounts.dart';
import 'package:loyverse/view/modifiers/modifiers.dart';

import '../categories/categories.dart';

class ItemsScreen extends StatelessWidget {
  ItemsScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.bgColorBlue,
          title: const Text(
            "Items",
            style: TextStyle(color: AppColors.btnColorWhite),
          ),
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite), // Add this line
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             ListTile(
              leading: Icon(Icons.list),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  allItemsScreen()),
                    );
                  },
                  child: Text("Items")),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
             ListTile(
              leading: Icon(Icons.copy,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  allCategoriesScreen()),
                    );

                  },
                  child: Text("Categories")),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),

             ListTile(
              leading: Icon(Icons.file_copy),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const ModifiersScreen()),
                    );
                  },
                  child: Text("Modifiers")),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
             ListTile(
              leading: Icon(Icons.discount),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const discountsScreen()),
                    );
                  },
                  child: Text("Discounts")),
            ),
            Divider(height: 1,),
            Container(
              decoration:  const BoxDecoration(
                color: AppColors.myGreyColor,
              ),
              height: 140,
              width: 370,
              child: Column(
                children: [
                  Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Extended item settings are available in the Back Office",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "GO TO BACK OFFICE",
                          style: TextStyle(color: AppColors.btnBgColorBlue),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "GOT IT",
                          style: TextStyle(color: AppColors.btnBgColorBlue),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Divider(height: 1,),

          ],

        ),
        drawer: drawer(),
    );
  }
}



