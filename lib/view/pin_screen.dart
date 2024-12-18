

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loyverse/colors/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final List<String> _pin = [];

  void _onKeyPress(String value) {
    setState(() {
      if (value == "Clear") {
        _pin.clear();
      } else if (_pin.length < 4) {
        _pin.add(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            // Clock icon at top right corner
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.access_time,
                  size: 20.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Spacer(),
            // App Logo and PIN title
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 10.h,
                ),
                SizedBox(height: 2.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "VISION",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.btnBgColorBlue,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "POINT OF SALE",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color:AppColors.btnBgColorBlue,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Enter PIN",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                        (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: CircleAvatar(
                        radius: 1.5.h,
                        backgroundColor: index < _pin.length
                            ? AppColors.btnBgColorBlue
                            : const Color.fromARGB(255, 232, 226, 226),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            // Numeric keypad
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.h,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  if (index == 9) {
                    return const SizedBox.shrink();
                  } else if (index == 11) {
                    return GestureDetector(
                      onTap: () => _onKeyPress("Clear"),
                      child: Center(
                        child: Text(
                          "Clear",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  } else {
                    String key = (index == 10 ? "0" : (index + 1).toString());
                    return GestureDetector(
                      onTap: () => _onKeyPress(key),
                      child: Center(
                        child: Text(
                          key,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}