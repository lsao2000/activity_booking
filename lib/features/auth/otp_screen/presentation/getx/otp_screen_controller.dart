import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreenController extends GetxController {
  Rx<bool> emailType = true.obs;
  Rx<bool> validOtp = true.obs;
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
    debugPrint("OtpScreenController initiliazed");
  }

  changeValidOtp() {
    validOtp.value = false;
    validOtp.refresh();
  }
}
