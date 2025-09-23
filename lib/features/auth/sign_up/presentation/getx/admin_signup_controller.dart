import 'package:activity_booking/features/auth/verification_type/presentation/view/verfication_type_screen.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AdminSignupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController businessName = TextEditingController();
  final TextEditingController businessDescription = TextEditingController();
  final TextEditingController websiteOrSocialMedia = TextEditingController();
  Rx<bool> isPasswordHidden = true.obs;
  Rx<bool> isConfirmPasswordHidden = true.obs;
  Rx<bool> isChecked = false.obs;
  Rx<String> countryCode = "+212".obs; // Default country code
  Rx<String> city = "".obs;
  Rx<Enum?> activity = Actvity.sirf.obs;

  @override
  void onInit() async {
    super.onInit();
    debugPrint("ClientSignupController initialized");
  }

  changeCheckbox(bool? value) {
    isChecked.value = value ?? false;
    isChecked.refresh();
  }

  changePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
    isPasswordHidden.refresh();
  }

  changeConfirmPasswordVisibility() {
    isConfirmPasswordHidden.value = !isConfirmPasswordHidden.value;
    isConfirmPasswordHidden.refresh();
  }

  void choseCountry(BuildContext context) {
    showCountryPicker(
        context: context,
        onSelect: (country) {
          countryCode.value = "+${country.phoneCode}";
          countryCode.refresh();
        });
  }

  Future<void> goToVerificationScreen() async {
    Future.wait([storeEmailSession(), storePasswordSession()]).whenComplete(() {
      Get.toNamed(VerficationTypeScreen.route);
    });
  }

  Future<void> storeEmailSession() async {
    try {
      FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
      flutterSecureStorage.write(
          key: "email", value: emailController.text.toString());
    } catch (e) {
      debugPrint("fail to save email: ${e.toString()}");
    }
  }

  Future<void> storePasswordSession() async {
    try {
      FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
      flutterSecureStorage.write(
          key: "password", value: passwordController.text.toString());
    } catch (e) {
      debugPrint("fail to save password:${e.toString()}");
    }
  }
}

enum Actvity { sport, sirf, swimming }
