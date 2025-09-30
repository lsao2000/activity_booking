import 'package:activity_booking/core/utils/user_type.dart';
import 'package:activity_booking/features/admin/home/presentation/view/admin_home_screen.dart';
import 'package:activity_booking/features/client/home/presentation/view/client_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await redirection();
  }

  Future<void> redirection() async {
    String password = await getPasswordSession();
    String email = await getEmailSession();
    if (email.isNotEmpty && password.isNotEmpty) {
      String sessionType = await getSessionType();
      if (sessionType == "client") {
        Get.toNamed(ClientHomeScreen.route);
      } else {
        Get.toNamed(AdminHomeScreen.route);
      }
    }
  }

  Future<String> getPasswordSession() async {
    FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
    String? password = await flutterSecureStorage.read(key: "password");
    return password ?? "";
  }

  Future<String> getEmailSession() async {
    FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
    String? email = await flutterSecureStorage.read(key: "email");
    return email ?? "";
  }
}
