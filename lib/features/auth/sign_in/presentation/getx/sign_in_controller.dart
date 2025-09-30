import 'package:activity_booking/core/utils/user_type.dart';
import 'package:activity_booking/features/admin/home/presentation/view/admin_home_screen.dart';
import 'package:activity_booking/features/client/home/presentation/view/client_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  Rx<bool> passwordVisible = true.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() async {
    super.onInit();
    debugPrint("SignInController initiliazed");
    await getPasswordSession();
    await getEmailSession();
    getUserType();
  }

  Future<void> changePasswordVisibility() async {
    passwordVisible.value = !passwordVisible.value;
    passwordVisible.refresh();
  }

  Future<void> getUserType() async {
    String type = await getSessionType();
    debugPrint("type: $type");
  }

  Future<void> goToHome(String type) async {
    if (type == "client") {
      Get.toNamed(ClientHomeScreen.route);
    } else {
      Get.toNamed(AdminHomeScreen.route);
    }
  }

  Future<void> getPasswordSession() async {
    FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
    String? password = await flutterSecureStorage.read(key: "password");
    debugPrint("password: $password");
    passwordController.text = password ?? "";
  }

  Future<void> getEmailSession() async {
    FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
    String? email = await flutterSecureStorage.read(key: "email");
    debugPrint("email: $email");
    emailController.text = email ?? "";
  }
}
