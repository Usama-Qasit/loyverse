//
// import 'package:flutter/material.dart';
//
// import '../../colors/colors.dart';
//
// class AddCategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.btnColorWhite,
//       appBar: AppBar(
//         backgroundColor: AppColors.btnBgColorBlue,
//         title:  const Text('Create category',style: TextStyle(color: AppColors.btnColorWhite),),
//         actions: [
//           TextButton(
//             onPressed: () {
//             },
//             child: const Text(
//               'SAVE',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 20,left: 18,right: 18),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              const TextField(
//                decoration: InputDecoration(
//                  labelText: "Category name",
//                  labelStyle: TextStyle(
//                    color: Colors.grey, // Initial label color
//                  ),
//                  floatingLabelStyle: TextStyle(
//                    color: Colors.blue, // Label color when field is focused
//                  ),
//                  enabledBorder: UnderlineInputBorder(
//                    borderSide: BorderSide(
//                      color: Colors.grey, // Bottom line color when not focused
//                    ),
//                  ),
//                  focusedBorder: UnderlineInputBorder(
//                    borderSide: BorderSide(
//                      color: Colors.blue, // Bottom line color when focused
//                      width: 2.0, // Optional: Thickness of the bottom line when focused
//                    ),
//                  ),
//                ),
//                cursorColor: Colors.blue, // Cursor color
//              ),
//
//             const SizedBox(height: 30),
//              const Text(
//               'Category color',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.btnBgColorBlue
//               ),
//             ),
//             const SizedBox(height: 18),
//             Center(
//               child: Wrap(
//                     alignment: WrapAlignment.start,
//                     runAlignment: WrapAlignment.center,
//                     spacing: 12, // Horizontal spacing between items
//                     runSpacing: 12, // Vertical spacing between rows
//                     children: [
//                       _buildColorBox(Colors.grey),
//                       _buildColorBox(Colors.red),
//                       _buildColorBox(Colors.pink),
//                       _buildColorBox(Colors.orange),
//                       _buildColorBox(Colors.lime),
//                       _buildColorBox(Colors.green),
//                       _buildColorBox(Colors.blue),
//                       _buildColorBox(Colors.purple),
//                     ],
//                   ),
//             ),
//
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildColorBox(Color color) {
//     return GestureDetector(
//       onTap: () {
//       },
//       child: Container(
//         width: 70,
//         height: 70,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(3),
//         ),
//       ),
//     );
//   }
// }
//
//




import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loyverse/view/custom_widgets/categories_button.dart';
import 'package:loyverse/view/custom_widgets/mainbutton.dart';

import '../../colors/colors.dart';

class AddCategoryScreen extends StatefulWidget {
  @override
  _AddCategoryScreenState createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  String? selectedColor; // Variable to store the selected color as a string

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
        title:  const Text('Create category',
          style: TextStyle(
              color: AppColors.btnColorWhite,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Text(
              'SAVE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the container
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 2, // Spread radius of the shadow
              blurRadius: 6, // Blur radius of the shadow
              offset: Offset(0, 3), // Offset to place shadow at the bottom
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    labelText: "Category name",

                    labelStyle: TextStyle(
                      color: Colors.grey, // Initial label color
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.blue, // Label color when field is focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Bottom line color when not focused
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue, // Bottom line color when focused
                        width: 2.0, // Optional: Thickness of the bottom line when focused
                      ),
                    ),
                  ),
                  cursorColor: Colors.blue, // Cursor color
                ),
                const SizedBox(height: 30),
                const Text(
                  'Category color',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.btnBgColorBlue),
                ),
                const SizedBox(height: 18),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.center,
                    spacing: 12, // Horizontal spacing between items
                    runSpacing: 12, // Vertical spacing between rows
                    children: [
                      _buildColorBox(Colors.grey),
                      _buildColorBox(Colors.red),
                      _buildColorBox(Colors.pink),
                      _buildColorBox(Colors.orange),
                      _buildColorBox(Colors.lime),
                      _buildColorBox(Colors.green),
                      _buildColorBox(Colors.blue),
                      _buildColorBox(Colors.purple),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 10),
                CategoriesButton(
                  onPressed: () {},
                  buttonTitle: "ASSIGN ITEMS",
                  buttonColor: AppColors.btnColorWhite,
                  buttonBgColor: AppColors.btnBgColorBlue,
                ),
                SizedBox(height: 15),
                CategoriesButton(
                  onPressed: () {},
                  buttonTitle: "CREATE ITEM",
                  buttonColor: AppColors.btnColorWhite,
                  buttonBgColor: AppColors.btnBgColorBlue,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget _buildColorBox(Color color) {
    final String colorString = color.toString(); // Convert color to string form
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = colorString;
          print('Selected Color: $selectedColor');
        });
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(3),
          border: selectedColor == colorString
              ? Border.all(color: Colors.black, width: 2) // Highlight selected box
              : null,
        ),
      ),
    );
  }
}