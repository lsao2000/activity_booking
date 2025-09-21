import 'package:activity_booking/core/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  static final String route = "/otp_screen";
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
              children: [
                Text('brand_name'.tr,
                    style: TextStyle(
                        color: brandColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.03),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "enter_six_digit_code".tr,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                ),
                OtpTextField(
                  numberOfFields: 6,
                  borderColor: grey,
                  borderRadius: BorderRadius.circular(Get.width * 0.01),
                  showFieldAsBox: true,

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
