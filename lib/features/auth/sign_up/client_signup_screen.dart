import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientSignupScreen extends StatelessWidget {
  const ClientSignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Yalla!',
                    style: TextStyle(
                        color: brandColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.04),
                Text(
                  'discover_and_book'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
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
