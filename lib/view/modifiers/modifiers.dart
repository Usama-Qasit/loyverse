



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../custom_widgets/drawer.dart';
import 'add_modifiers.dart';

class ModifiersScreen extends StatefulWidget {
  const ModifiersScreen({super.key});

  @override
  State<ModifiersScreen> createState() => _ModifiersScreenState();
}

class _ModifiersScreenState extends State<ModifiersScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppColors.btnColorWhite,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back,color: AppColors.btnColorWhite,)),
          title: const Text("Modifiers",style: TextStyle(
            color: AppColors.btnColorWhite,
            fontWeight: FontWeight.w500,
            fontSize: 20,
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
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>CreateModifierScreen()));
            },
            icon: const Icon(
              Icons.add,
              color: AppColors.btnColorWhite,
            ),
          ),
        ),



    );
  }

}
