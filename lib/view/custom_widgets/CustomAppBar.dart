import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:loyverse/view/customer_ticket_screen.dart';

import '../homeScreen.dart';
import '../ticket_charge.dart';
import 'dialog_container.dart';
import 'extra_home_Screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColorBlue,
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState?.openDrawer();
        },
        child: const Icon(Icons.menu,color: AppColors.btnColorWhite,)

      ),
      title: Row(
        children: [
          GestureDetector(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(
                builder: (context) => TicketChargeScreen(),
              ),
              );

            },
            child: const Text(
              "Ticket",
              style: TextStyle(color: AppColors.btnColorWhite),
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.receipt, color: Colors.white),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person_add, color: AppColors.btnColorWhite),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => AddCustomerTicketScreen(),
            ),
            );// Use named route for navigation
          },
        ),
        PopupMenuButton<PopUpList>(
          icon:   const Icon(Icons.more_vert,color: AppColors.btnColorWhite,),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<PopUpList>>[
            PopupMenuItem<PopUpList>(
              value: PopUpList.clear,
              child:InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return DialogContainer(
                        title: 'Clear ticket',
                        message: 'Are you sure you want to clear the ticket?',
                        onConfirm: () {
                          Navigator.pop(context); // Handle confirm action
                        },
                        onCancel: () {
                          Navigator.pop(context); // Handle cancel action
                        },
                      );
                    },
                  );
                },
                child: Padding( // Wrap Row in a Padding or Container
                  padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                  child: Row(
                    children: const [
                      Icon(Icons.delete),
                      SizedBox(width: 14),
                      Text("Clear Ticket"),
                    ],
                  ),
                ),
              ),

            ),
             PopupMenuItem<PopUpList>(
              value: PopUpList.sync,
              child: Row(
                children: [
                  Icon(Icons.sync),
                  SizedBox(width: 14),
                  Text("Sync"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
