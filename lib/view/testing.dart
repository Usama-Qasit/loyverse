// import 'package:dropdown_textfield/dropdown_textfield.dart';
// import 'package:flutter/material.dart';
//
//
//
//
// class DropdownScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dropdown Screen"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Single selection dropdown",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             DropDownTextField(
//
//               clearOption: false,
//               listSpace: 20,
//
//
//               validator: (value) {
//                 if (value == null) {
//                   return "Required field";
//                 } else {
//                   return null;
//                 }
//               },
//               dropDownList:  const [
//                 DropDownValueModel(name: 'name1', value: "value1"),
//                 DropDownValueModel(name: 'name2', value: "value2"),
//                 DropDownValueModel(name: 'name3', value: "value3"),
//
//               ],
//               listTextStyle: const TextStyle(color: Colors.black),
//               dropDownItemCount: 3,
//               onChanged: (val) {
//
//                 print("Selected value: ${val?.name}");
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
























