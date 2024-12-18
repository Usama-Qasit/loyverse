

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/dialog_container.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/settings/customer_displays/customer_displays.dart';
import 'package:loyverse/view/settings/printers/printers.dart';
import 'package:loyverse/view/settings/taxes/taxes.dart';
import 'package:loyverse/view/support/help/help.dart';
import 'package:loyverse/view/support/legal%20information/privacy_policy.dart';
import 'package:loyverse/view/support/legal%20information/term_of_use.dart';




class LegalInformation extends StatelessWidget {
  LegalInformation({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
          backgroundColor: AppColors.bgColorBlue,
          title:  const Text(
            "Legal Information",
            style: TextStyle(color: AppColors.btnColorWhite,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ), // Add this line
        ),

        body:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TermOfUse()),);
              },
              child: const ListTile(
                leading: Icon(Icons.help),
                title: Text("Term of use"),
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()),);
                  },
                  child: const Text("Privacy Policy")),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),


          ],

        ),
        drawer: drawer(),
      ),
    );
  }
}



