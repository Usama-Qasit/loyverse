

import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

class CreateModifierScreen extends StatefulWidget {
  @override
  _CreateModifierScreenState createState() => _CreateModifierScreenState();
}

class _CreateModifierScreenState extends State<CreateModifierScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _modifierNameController = TextEditingController();
  final List<TextEditingController> _optionNameControllers = [];
  final List<TextEditingController> _optionPriceControllers = [];

  void addOption() {
    setState(() {
      _optionNameControllers.add(TextEditingController());
      _optionPriceControllers.add(TextEditingController());
    });
  }

  void removeOption(int index) {
    setState(() {
      _optionNameControllers.removeAt(index);
      _optionPriceControllers.removeAt(index);
    });
  }

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
        title: const Text('Create Modifier',
          style: TextStyle(
              color: AppColors.btnColorWhite,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            child: const Text("SAVE",
              style: TextStyle(
                  color: AppColors.btnColorWhite,
                  fontSize: 16,
                fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                String modifierName = _modifierNameController.text;
                List<String> optionNames = _optionNameControllers.map((c) => c.text).toList();
                List<double> optionPrices = _optionPriceControllers.map((c) => double.parse(c.text)).toList();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _modifierNameController,
                  decoration: InputDecoration(
                    labelText: 'Modifier name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a modifier name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ...List.generate(
                  _optionNameControllers.length,
                      (index) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.remove),
                          Expanded(
                            child: TextFormField(
                              controller: _optionNameControllers[index],
                              decoration: InputDecoration(
                                labelText: 'Option name',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter an option name';
                                }
                                return null;
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => removeOption(index),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _optionPriceControllers[index],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Price',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a price';
                          }
                          if (double.tryParse(value) == null) {
                            return 'Please enter a valid number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.add_circle_outline,color: AppColors.bgColorBlue,),
                  onPressed: addOption,
                  label: const Text('ADD OPTION',style: TextStyle(color: AppColors.btnBgColorBlue),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white, // Set the background color to white
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}