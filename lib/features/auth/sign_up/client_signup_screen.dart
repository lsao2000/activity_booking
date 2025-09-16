import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientSignupScreen extends StatelessWidget {
  ClientSignupScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // alignment: Alignment.topRight,
            width: Get.width,
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
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
                        'register_as_client'.tr,
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'book_msg'.tr,
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'first_name'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'first_name_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_first_name'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "last_name".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'last_name_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_last_name'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "email".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'email_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_email'.tr;
                          }
                          if (!GetUtils.isEmail(value)) {
                            return 'enter_valid_email'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "phone_number".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.03,
                                right: width * 0.01,
                                top: height * 0.01,
                                bottom: height * 0.01),
                            child: Text(
                              '+216',
                              style: TextStyle(color: grey, fontSize: 16),
                            ),
                          ),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.03),
                          // prefixText: "+216",
                          // prefixStyle: TextStyle(color: black, fontSize: 16),
                          hintText: 'phone_number_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_phone_number'.tr;
                          }
                          if (!GetUtils.isPhoneNumber(value)) {
                            return 'invalid_phone_number'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text("password".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'password_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_password'.tr;
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text("confirm_password".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'password_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_confirm_password'.tr;
                          }
                          // Add logic to compare with the first password field
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.04),
                      Text("city".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(height: height * 0.01),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          fillColor: inputColor,
                          focusColor: brandColor,
                          hoverColor: inputColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: brandColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGrey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                        ),
                        items: ['City1', 'City2', 'City3']
                            .map((city) => DropdownMenuItem<String>(
                                  value: city,
                                  child: Text(city),
                                ))
                            .toList(),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.camera_alt_outlined,
                              color: black, size: 30),
                          SizedBox(width: width * 0.03),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lightGrey,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.1,
                                    vertical: height * 0.02)),
                            onPressed: () {
                              // Logic to upload profile picture
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                "upload_profile_picture".tr,
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.check_box_outlined,
                              color: black, size: 20),
                          // Checkbox(value: false, onChanged: (value) {}),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Text(
                              'terms_and_conditions'.tr,
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.04),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: deepOrange,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.3,
                                  vertical: height * 0.01)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Process data.
                            }
                          },
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              "register".tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
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
