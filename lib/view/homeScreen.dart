

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';


import 'custom_widgets/CustomAppBar.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}
enum PopUpList{clear,sync}
// final itemsList = [];

class _HomescreenState extends State<Homescreen> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> items = [
    "All items" ,
    "Favorites",
    "Discounts",
    "Frozen"
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {

    PopUpList? selectedMenu;
    String? selectedItem;

    return Scaffold(
          backgroundColor: AppColors.btnColorWhite,
          key: scaffoldKey,
          appBar: CustomAppBar(scaffoldKey: scaffoldKey),

          body: Column(
            children: [
              Container(
                height: 70,
                width :320,
                color: AppColors.bgColorBlue,
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(12),
                child: const Text(
                  "CHARGE\nRs0.00",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),


              SizedBox(height: 10,),
                Divider(),
                 Row(
                    children: [
                     DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              dropdownStyleData: const DropdownStyleData(
                                decoration: BoxDecoration(
                                  color: AppColors.btnColorWhite,
                                )
                              ),
                              isExpanded: true,
                              hint: Text(
                                'Select Item',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: items
                                  .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              buttonStyleData: const ButtonStyleData(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                height: 30,
                                width: 300,
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 50,
                              ),
                            ),
                          ),
                      SizedBox(width:10,),
                      const Icon(Icons.search,color: AppColors.darkGreyColor),

                    ],
                ),

                Divider(height: 20,),

            ],
          ),

            drawer:drawer(),
    );
  }
}
