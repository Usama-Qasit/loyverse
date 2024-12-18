


import 'package:flutter/material.dart';

import '../colors/colors.dart';
import 'customer_ticket_screen.dart';

class TicketChargeScreen extends StatelessWidget {
  const TicketChargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColorBlue,
          title: const Row(
            children: [
              Text(
                "Ticket",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.receipt,
                color: Colors.white,
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_add, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  AddCustomerTicketScreen(),
                ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                // Handle more options
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ice cream x 1",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Rs150.00",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Rs150.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 70,
                width :320,
                color: AppColors.bgColorBlue,
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(12),
                child: const Text(
                  "CHARGE\nRs0.00",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




