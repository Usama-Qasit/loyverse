//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:loyverse/colors/colors.dart';
// import 'package:loyverse/view/custom_buttons/mainbutton.dart';
//
// class RegistrationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.bgColorBlue,
//         title: const Text('Registration',
//             style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.btnColorWhite)),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back,color: AppColors.btnColorWhite,),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   border: UnderlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//               const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: UnderlineInputBorder(),
//                   suffixIcon: Icon(Icons.visibility),
//                 ),
//               ),
//               SizedBox(height: 16),
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Business name',
//                   border: UnderlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Country',
//                   border: UnderlineInputBorder(),
//                 ),
//                 items: [
//                   DropdownMenuItem(
//                     value: 'Pakistan',
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/pakistan_flag.png',
//                           width: 24,
//                           height: 16,
//                         ),
//                         SizedBox(width: 8),
//                         Text('Pakistan'),
//                       ],
//                     ),
//                   ),
//                 ],
//                 onChanged: (value) {},
//               ),
//               SizedBox(height: 16),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Checkbox(value: false, onChanged: (value) {}),
//                   Expanded(
//                     child: RichText(
//                       text: const TextSpan(
//                         text: 'I agree to Loyverse ',
//                         style: TextStyle(color: Colors.black),
//                         children: [
//                           TextSpan(
//                             text: 'Terms of Use',
//                             style: TextStyle(color: Colors.blue),
//                           ),
//                           TextSpan(
//                             text: ' and have read and acknowledged ',
//                           ),
//                           TextSpan(
//                             text: 'Privacy Policy',
//                             style: TextStyle(color: Colors.blue),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16),
//
//               SignInButton(
//                   onPressed: (){},
//                   buttonTitle: "SIGN UP",
//                   buttonColor: AppColors.btnColorWhite, buttonBgColor: AppColors.btnBgColorBlue,)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

import 'custom_widgets/mainbutton.dart';



class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // GlobalKey to hold the form state
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColorBlue,
        title: const Text(
          'Registration',
          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.btnColorWhite),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.btnColorWhite,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Assign the form key
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email TextField with validation
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: UnderlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email'; // Validation error message
                    }
                    return null; // Return null if the input is valid
                  },
                ),
                SizedBox(height: 16),

                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Business name',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Country',
                    border: UnderlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'Pakistan',
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/pakistan_flag.png',
                            width: 24,
                            height: 16,
                          ),
                          SizedBox(width: 8),
                          Text('Pakistan'),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          text: 'I agree to Loyverse ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Terms of Use',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(
                              text: ' and have read and acknowledged ',
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                SignInButton(
                  onPressed: () {
                    // Check if the form is valid
                    if (_formKey.currentState?.validate() ?? false) {
                      // Form is valid, proceed with the signup
                    }
                  },
                  buttonTitle: "SIGN UP",
                  buttonColor: AppColors.btnColorWhite,
                  buttonBgColor: AppColors.btnBgColorBlue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
