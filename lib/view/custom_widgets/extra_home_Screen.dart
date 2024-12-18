//
//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:loyverse/view/custom_widgets/extra_appBar.dart';
//
// import '../../colors/colors.dart';
// import 'drawer.dart';
//
// class ExtraHomeScreen extends StatefulWidget {
//   @override
//   State<ExtraHomeScreen> createState() => _ExtraHomeScreenState();
// }
// enum PopUpList{clear,sync}
// final itemsList = ["All items" , "Favorites","Discounts","Frozen"];
//
// class _ExtraHomeScreenState extends State<ExtraHomeScreen> {
//
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//
//     PopUpList? selectedMenu;
//     String? selectedItem;
//
//     return Scaffold(
//       backgroundColor: AppColors.btnColorWhite,
//       key: scaffoldKey,
//       body: Column(
//         children: [
//           appBar(scaffoldKey),
//           Container(
//             height: 70,
//             width :320,
//             color: AppColors.bgColorBlue,
//             margin: EdgeInsets.only(top: 16),
//             padding: EdgeInsets.all(12),
//             child: const Text(
//               "CHARGE\nRs0.00",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//               ),
//             ),
//           ),
//
//
//           SizedBox(height: 5,),
//           Column(
//             children: [
//               Divider(),
//               SizedBox(
//                 width: 350, // Adjust the width as needed
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: DropdownButtonFormField<String>(
//                         isExpanded: true,
//                         menuMaxHeight: 200, // Limit the dropdown height
//                         value: itemsList.first, // Set the initial value
//                         items: itemsList.map((e) {
//                           return DropdownMenuItem<String>(
//                             value: e,
//                             child: SizedBox(
//                               width: 250, // Set a fixed width for dropdown items
//                               child: Text(
//                                 e,
//                                 overflow: TextOverflow.ellipsis, // Prevent text overflow
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         onChanged: (val) {
//                           // Handle the selected value
//                         },
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.only(left: 16.0),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       width: 10, // Reduced the width
//                       thickness: 2, // Reduced the thickness
//                       color: Colors.green,
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.search),
//                       onPressed: () {
//                         // Handle search button press
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//
//
//               Divider(),
//             ],
//           ),
//         ],
//       ),
//
//       drawer:drawer(),
//     );
//   }
// }
