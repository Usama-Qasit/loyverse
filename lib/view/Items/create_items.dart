//
//
//
//
//
//  import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CreateItems extends StatefulWidget {
//    const CreateItems({super.key});
//
//    @override
//    State<CreateItems> createState() => _CreateItemsState();
//  }
//
//  class _CreateItemsState extends State<CreateItems> {
//
//    final List<String> _dropDownItems = ['one','two','three'];
//
//    String _selectedItem ='one';
//    String _selectedTextFieldItem ='one';
//
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Create items'),
//        ),
//        body: Center(
//          child: Column(
//            children: [
//              Container(
//                width: 200,
//                child: DropdownButtonFormField(
//                  isExpanded: true,
//                  value: _selectedTextFieldItem,
//                    items: _dropDownItems.map((String item){
//                      return DropdownMenuItem(
//                          value: item,
//                          child: Text(item),
//                      );
//                    }).toList(),
//                    onChanged: (String?value){
//                    setState(() {
//                      _selectedTextFieldItem = value!;
//                    });
//                    },
//                  icon: const Icon(Icons.arrow_drop_down),
//                  itemHeight: 50,
//                    ),
//              ),
//            ],
//          ),
//
//        ),
//      );
//    }
//  }



import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final Function(String?) onChanged;

  const CustomDropdown({
    Key? key,
    required this.items,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      value: _selectedValue,
      items: widget.items.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedValue = value!;
        });
        widget.onChanged(value);
      },
      icon: const Icon(Icons.arrow_drop_down),
      itemHeight: 50,
    );
  }
}

class CreateItemScreen extends StatefulWidget {
  const CreateItemScreen({Key? key}) : super(key: key);

  @override
  _CreateItemScreenState createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  final List<String> _categories = ['Frozen', 'Refrigerated', 'Shelf-Stable'];
  String _selectedCategory = 'Frozen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16.0),
            CustomDropdown(
              items: _categories,
              initialValue: _selectedCategory,
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'SKU',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Barcode',
              ),
            ),
          ],
        ),
      ),
    );
  }
}