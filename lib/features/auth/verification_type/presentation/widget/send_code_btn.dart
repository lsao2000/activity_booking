import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/auth/otp_screen/presentation/view/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendCodeBtn extends StatelessWidget {
  const SendCodeBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.01, horizontal: Get.width * 0.15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Get.width * 0.01)),
          backgroundColor: white,
          side: BorderSide(width: 1, color: grey)),
      onPressed: () {
        Get.toNamed(OtpScreen.route);
      },
      child: Text(
        "send_code".tr,
        style: TextStyle(
            color: deepOrange, fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
