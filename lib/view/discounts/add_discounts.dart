import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

class CreateDiscountScreen extends StatefulWidget {
  @override
  _CreateDiscountScreenState createState() => _CreateDiscountScreenState();
}

class _CreateDiscountScreenState extends State<CreateDiscountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  bool isPercentage = true;

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
        title: const Text('Create Discount',
          style: TextStyle(color: AppColors.btnColorWhite,
          fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Text("SAVE",
              style: TextStyle(
                  color: AppColors.btnColorWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              cursorColor: AppColors.btnBgColorBlue,
              decoration:  const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.grey),
                floatingLabelStyle: TextStyle(color: AppColors.btnBgColorBlue),
                contentPadding: EdgeInsets.symmetric(vertical: 0,),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _valueController,
                    keyboardType: TextInputType.number,
                    decoration:  const InputDecoration(
                      labelText: 'Value',
                      labelStyle: TextStyle(color: Colors.grey),
                      floatingLabelStyle: TextStyle(color: AppColors.btnBgColorBlue),
                      contentPadding: EdgeInsets.symmetric(vertical: 0,),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.btnBgColorBlue,width: 2.0),
                      )
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isPercentage = true;
                          });
                        },
                        style: TextButton.styleFrom(
                          foregroundColor:  Colors.grey,
                          backgroundColor: isPercentage ? Colors.lightBlue.shade100 : Colors.transparent,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4),
                            ),
                          ),
                          side:  BorderSide(color: AppColors.lightGreyColor, width: 1), // Border color remains black
                        ),
                        child:  const Text('%',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          setState(() {
                            isPercentage = false;
                          });
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey,
                          backgroundColor: !isPercentage ? Colors.lightBlue.shade100 : Colors.transparent,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          side: const BorderSide(color:AppColors.lightGreyColor, width: 1), // Border color remains black
                        ),
                        child: const Text('Σ',
                          style: TextStyle(
                              fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Leave the field blank to\nindicate the value upon sale',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}