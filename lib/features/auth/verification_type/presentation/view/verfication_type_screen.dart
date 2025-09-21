import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/auth/verification_type/presentation/widget/send_code_btn.dart';
import 'package:activity_booking/features/auth/verification_type/presentation/widget/verfication_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerficationTypeScreen extends StatelessWidget {
  const VerficationTypeScreen({super.key});
  static final String route = "/verification_screen";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
            width: width,
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.05),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'brand_name'.tr,
                    style: TextStyle(
                        color: brandColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Get.height * 0.04),
                  SizedBox(
                    width: width * 0.8,
                    child: Text(
                      "complete_profile".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.04),
                  VerficationDropDown(),
                  SizedBox(height: Get.height * 0.04),
                  SendCodeBtn()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
