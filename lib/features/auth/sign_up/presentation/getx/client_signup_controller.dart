import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientSignupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  Rx<bool> isPasswordHidden = true.obs;
  Rx<bool> isConfirmPasswordHidden = true.obs;
  Rx<bool> isChecked = false.obs;
  Rx<String> countryCode = "+212".obs; // Default country code
  @override
  void onInit() async {
    super.onInit();
    debugPrint("ClientSignupController initialized");
    // await getLocalCountryCode();
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
}
