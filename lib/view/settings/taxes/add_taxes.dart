



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddTaxes extends StatefulWidget {
  const AddTaxes({super.key});

  @override
  State<AddTaxes> createState() => _AddTaxesState();
}

class _AddTaxesState extends State<AddTaxes> {


  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _taxRateController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _taxRateFocusNode = FocusNode();

  bool _isNameFieldValid = true;
  bool _isButtonEnabled = true;
  String _errorMessage = '';

  String _selectedType = "Included in the price";
  final List<String> _typeOptions = [
    "Included in the price",
    "Added to the price",
  ];

  @override
  void initState() {
    super.initState();

    _taxRateFocusNode.addListener(() {
      if (_taxRateFocusNode.hasFocus) {
        setState(() {
          if (_nameController.text.trim().isEmpty) {
            _isNameFieldValid = false;
            _errorMessage = 'This field cannot be blank';
            _isButtonEnabled = false;
          }
        });
      }
    });
    _nameFocusNode.addListener(() {
      setState(() {
        _isNameFieldValid = true;
        _errorMessage = '';
        _isButtonEnabled = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0,
            leading: const Icon(Icons.arrow_back, color: Colors.white),
            title: Text(
              "Create tax",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name Input
                  TextField(
                    controller: _nameController,
                    focusNode: _nameFocusNode,
                    style: TextStyle(fontSize: 16.sp),
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 16.sp,
                        color: _isNameFieldValid
                            ? Colors.grey.shade800
                            : Colors.red,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: _isNameFieldValid ? Colors.blue : Colors.red,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: _isNameFieldValid
                              ? Colors.grey.shade400
                              : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  if (!_isNameFieldValid)
                    Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Text(
                        _errorMessage,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                        ),
                      ),
                    ),

                  SizedBox(height: 3.h),

                  // Tax Rate Input
                  TextField(
                    controller: _taxRateController,
                    focusNode: _taxRateFocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 16.sp),
                    decoration: InputDecoration(
                      labelText: "Tax rate, %",
                      labelStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey.shade800,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                  ),

                  SizedBox(height: 3.h),

                  // Type Dropdown
                  Text(
                    "Type",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedType,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 22.sp,
                      color: Colors.black,
                    ),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedType = newValue!;
                      });
                    },
                    items: _typeOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),

                  SizedBox(height: 5.h),

                  // APPLY TO ITEMS Button
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      height: 6.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: _isButtonEnabled
                                ? Colors.blue
                                : Colors.grey.shade400,
                            width: 0.5.w,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.sp),
                          ),
                        ),
                        onPressed: _isButtonEnabled ? () {} : null,
                        child: Text(
                          "APPLY TO ITEMS",
                          style: TextStyle(
                            color: _isButtonEnabled ? Colors.blue : Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

