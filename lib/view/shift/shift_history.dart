




import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class ShiftHistory extends StatelessWidget {
  final List<Shift> shifts = [
    Shift(date: 'Dec 16', startTime: '11:34 AM', endTime: '02:49 PM'),
    Shift(date: 'Dec 16', startTime: '10:58 AM', endTime: '11:34 AM'),
    Shift(date: 'Dec 16', startTime: '10:58 AM', endTime: '10:58 AM'),
    Shift(date: 'Dec 11 - Dec 16', startTime: '10:02 AM', endTime: '10:58 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnColorWhite,
      appBar: AppBar(
        leading:  const Icon(Icons.close,color: AppColors.darkGreyColor,),
        title: const Text("Close shift"),
        backgroundColor: Colors.white,
        elevation: 0, // Remove default shadow
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Thickness of the line
          child: Container(
            color: Colors.grey.shade300, // Line color
            height: 1.0, // Line height
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: shifts.length,
        itemBuilder: (context, index) {
          Shift shift = shifts[index];
          return ListTile(
            leading: Icon(Icons.access_time),
            title: Text(
              '${shift.date} - ${shift.startTime} - ${shift.endTime}',
              style: TextStyle(fontSize: 16.0),
            ),
          );
        },
      ),
    );
  }
}

class Shift {
  final String date;
  final String startTime;
  final String endTime;

  Shift({required this.date, required this.startTime, required this.endTime});
}