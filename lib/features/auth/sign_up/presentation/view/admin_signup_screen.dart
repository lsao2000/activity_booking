import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.05),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('brand_name'.tr,
                          style: TextStyle(
                              color: brandColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: height * 0.03),
                      Text(
                        'resgister_as_admin'.tr,
                        style: TextStyle(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'book_msg_admin'.tr,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
