//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../colors/colors.dart';
// import '../homeScreen.dart';
// import 'dialog_container.dart';
//
// Widget appBar(GlobalKey <ScaffoldState>key){
//
//   return Container(
//     height: 95,
//
//     color: Colors.green,
//     child: Padding(
//       padding:  EdgeInsets.only(top: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: (){
//               key.currentState!.openDrawer();
//             },
//             child:Container(
//                 height:5,
//                 width: 55,
//                 child: const Icon(Icons.menu,color: Colors.white,),
//               ),
//           ),
//            Padding(
//              padding:  EdgeInsets.only(top: 20,left: 20),
//              child: Row(
//               children: [
//                  Text("Ticket",style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500),
//                     ),
//
//
//
//                 SizedBox(width: 15,),
//                 const Text("Ticket",style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(width: 50,),
//                 const Icon(Icons.person_add,color: Colors.white,),
//                 SizedBox(width: 20,),
//                 PopupMenuButton<PopUpList>(
//                   icon:   const Icon(Icons.more_vert,color: AppColors.btnColorWhite,),
//                   itemBuilder: (BuildContext context) => <PopupMenuEntry<PopUpList>>[
//                     PopupMenuItem<PopUpList>(
//                       value: PopUpList.clear,
//                       child:InkWell(
//                         onTap: () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return DialogContainer(
//                                 title: 'Clear ticket',
//                                 message: 'Are you sure you want to clear the ticket?',
//                                 onConfirm: () {
//                                   Navigator.pop(context); // Handle confirm action
//                                 },
//                                 onCancel: () {
//                                   Navigator.pop(context); // Handle cancel action
//                                 },
//                               );
//                             },
//                           );
//                         },
//                         child: Padding( // Wrap Row in a Padding or Container
//                           padding: const EdgeInsets.all(8.0), // Adjust padding as needed
//                           child: Row(
//                             children: const [
//                               Icon(Icons.delete),
//                               SizedBox(width: 14),
//                               Text("Clear Ticket"),
//                             ],
//                           ),
//                         ),
//                       ),
//
//                     ),
//                     PopupMenuItem<PopUpList>(
//                       value: PopUpList.sync,
//                       child: Row(
//                         children: [
//                           Icon(Icons.sync),
//                           SizedBox(width: 14),
//                           Text("Sync"),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//              ),
//            )
//         ],
//       ),
//     ),
//   );
// }
//
//
