






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/dialog_container.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/settings/customer_displays/customer_displays.dart';
import 'package:loyverse/view/settings/printers/printers.dart';
import 'package:loyverse/view/settings/taxes/taxes.dart';
import 'package:loyverse/view/support/legal%20information/legal_information.dart';

import 'account/accounts.dart';
import 'help/help.dart';


class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.bgColorBlue,
          title:  const Text(
            "Support",
            style: TextStyle(color: AppColors.btnColorWhite,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          iconTheme: const IconThemeData(color: AppColors.btnColorWhite), // Add this line
        ),

        body:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpScreen()),);
              },
              child: const ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LegalInformation()),);
                  },
                  child: const Text("Legal Information")),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountsScreen()),);
                  },
                  child: Text("Account")),
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



