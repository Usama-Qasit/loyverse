









import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/custom_widgets/dialog_container.dart';
import 'package:loyverse/view/custom_widgets/drawer.dart';
import 'package:loyverse/view/settings/customer_displays/customer_displays.dart';
import 'package:loyverse/view/settings/printers/printers.dart';
import 'package:loyverse/view/settings/taxes/taxes.dart';
import 'package:loyverse/view/support/help/community.dart';

import 'help_link.dart';


class HelpScreen extends StatelessWidget {
  HelpScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        key: scaffoldKey,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
          backgroundColor: AppColors.bgColorBlue,
          title:  const Text(
            "Help",
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpLink()),);
              },
              child: const ListTile(
                leading: Icon(Icons.help),
                title: Text("Help center"),
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
              indent: 58,
              endIndent: 0,
            ),
            ListTile(
              leading: const Icon(Icons.comment,),
              title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CommunityScreen()),);
                  },
                  child: const Text("Community")),
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



