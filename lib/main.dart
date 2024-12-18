import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loyverse/view/mainScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //       statusBarColor:Colors.green[100],
  //       statusBarIconBrightness: Brightness.dark),
  // );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Mainscreen(),
        );
      },
    );
  }
}
