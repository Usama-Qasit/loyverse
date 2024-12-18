

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add customer to ticket'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // Handle close button press
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle "Add New Customer" button press
              },
              child: const Text('ADD NEW CUSTOMER'),
            ),


            // Add a ListView or other widget to display recent customers
          ],
        ),
      ),
    );
  }
}