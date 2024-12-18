


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/customer_ticket_screen.dart';
import 'package:loyverse/view/homeScreen.dart';


import '../../colors/consts.dart';
import '../Items/items.dart';
import '../forgetPassword.dart';
import '../receipts/receipts.dart';
import '../settings/settings.dart';
import '../shift/shift_Screen.dart';
import '../support/support_screen.dart';


Widget drawer() {
  return Drawer(
    backgroundColor: AppColors.btnColorWhite,
           shape:RoundedRectangleBorder(
           ),
           child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      child: const DrawerHeader(
                        decoration: BoxDecoration(
                          color: AppColors.bgColorBlue,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Owner",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "POS 1",
                                        style: TextStyle(
                                          color: AppColors.btnColorWhite,
                                          fontSize: 14,
                                        ),
                                      ),
                                      CircleAvatar(
                                          backgroundColor:AppColors.btnColorWhite,
                                          child: Icon(Icons.lock,color: Colors.grey)
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Sales",
                                    style: TextStyle(
                                      color: AppColors.btnColorWhite,
                                      fontSize: 14,
                                    ),
                                  ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: drawerTitleList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 1),
                              child: ListTile(
                                onTap: () {
                                  switch (index){
                                    case 0:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Homescreen()),
                                      );
                                      break;
                                    case 1 :
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  ReceiptsScreen()),
                                      );
                                      break;
                                    case 2:
                                      Navigator.push(
                                          context,MaterialPageRoute(builder: (context)=>ShiftScreen()));
                                      break;
                                    case 3 :
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  ItemsScreen()),
                                      );
                                      break;
                                    case 4 :
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SettingsScreen()),
                                      );
                                      break;
                                    default:

                                  }

                                },
                                leading: Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Icon(
                                    drawerIconsList[index],
                                    color: Colors.grey,
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    drawerTitleList[index],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const Divider(height: 0.2, color: Colors.grey),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: drawerTitleList2.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 1),
                              child: ListTile(
                                onTap: () {
                                  switch (index){
                                    case 0:
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                                      );
                                      break;
                                    case 1 :
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const AddCustomerTicketScreen()),
                                      );
                                      break;
                                    case 2 :
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  SupportScreen()),
                                      );
                                      break;
                                    default:

                                  }

                                  },
                                leading: Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Icon(
                                    drawerIconsList2[index],
                                    color: Colors.grey,
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    drawerTitleList2[index],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "v.2.47.1",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),

    ),
  );
}


