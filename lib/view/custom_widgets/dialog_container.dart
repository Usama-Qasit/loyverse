import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';

class DialogContainer extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  // Constructor to accept parameters
  DialogContainer({
    required this.title,
    required this.message,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent, // Transparent background for custom container
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the rectangular container
          borderRadius: BorderRadius.circular(8), // Rounded corners (adjust as needed)
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4), // Shadow effect
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Ensure the container size fits the content
          children: [
            // Title
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            // Message
            Text(
              message,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),



            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Cancel Button
                TextButton(
                  onPressed: onCancel,
                  child: Text(
                    "CANCEL",
                    style: TextStyle(color: AppColors.btnBgColorBlue),
                  ),
                ),
                SizedBox(width: 10),
                // Confirm Button
                TextButton(
                  onPressed: onConfirm,
                  child: Text(
                    "CLEAR",
                    style: TextStyle(color: AppColors.btnBgColorBlue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//
// Container(
// padding: EdgeInsets.all(20),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(10), // Rectangular container with rounded corners
// boxShadow: [
// BoxShadow(
// color: Colors.black26,
// blurRadius: 10,
// offset: Offset(0, 4), // Shadow position
// ),
// ],
// ),
// )