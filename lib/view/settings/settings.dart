


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/dialog_container.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/settings/customer_displays/customer_displays.dart';
import 'package:loyverse/view/settings/printers/printers.dart';
import 'package:loyverse/view/settings/taxes/taxes.dart';


class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.bgColorBlue,
          title: const Text(
            "Settings",
            style: TextStyle(color: AppColors.btnColorWhite),
          ),
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite), // Add this line
        ),

        body:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrinterScreen()),);
              },
              child: ListTile(
                leading: Icon(Icons.print),
                title: Text("Printers"),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
            ListTile(
              leading: Icon(Icons.tablet_outlined,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerDisplaysScreen()),);
                  },
                  child: const Text("Customer displays")),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
            ListTile(
              leading: Icon(Icons.percent,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TaxesScreen()),);
                  },
                  child: Text("Taxes")),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("General"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),

            Spacer(),

            Column(
              children: [
                Text("admin@gmail.com",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DialogContainer(
                          title: 'Sign out',
                          message: 'Are you sure you want to exit?',
                          onConfirm: () {
                            Navigator.pop(context); // Handle confirm action
                          },
                          onCancel: () {
                            Navigator.pop(context); // Handle cancel action
                          },
                        );
                      },
                    );
                  },
                  child: Center(
                    child: Container(
                      height:60 ,
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Button size
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Background color
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                        border: Border.all(color: Colors.grey.shade200, width: 3), // Border color and width
                      ),
                      child: const Center(
                        child: Text(
                          'SIGN OUT',
                          style: TextStyle(
                            color: Colors.black, // Text color
                            fontSize: 14, // Text size
                            fontWeight: FontWeight.w500, // Text weight
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 13,),



          ],

        ),
        drawer: drawer(),
      ),
    );
  }
}



