// class vj {
//
// }
import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/auth/introduction/presentation/view/introduction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  bool isObscured = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text('signin'.tr)),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
            child: Column(
              children: [
                Text('brand_name'.tr,
                    style: TextStyle(
                        color: brandColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: Get.height * 0.04),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                          if (value == null || value.isEmpty) {
                            return 'enter_your_email'.tr;
                          } else if (!emailRegex.hasMatch(value)) {
                            return "enter_valid_email".tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'email'.tr,
                          fillColor: textFieldColor,
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
                          labelStyle: TextStyle(color: grey),
                          filled: true,
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter_your_password'.tr;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          suffixIcon: isObscured
                              ? IconButton(
                                  onPressed: () {
                                    isObscured = !isObscured;
                                  },
                                  icon: Icon(Icons.visibility_off_outlined))
                              : IconButton(
                                  onPressed: () {
                                    isObscured = !isObscured;
                                  },
                                  icon: Icon(Icons.visibility),
                                ),
                          labelText: 'password'.tr,
                          labelStyle: TextStyle(color: grey),
                          fillColor: textFieldColor,
                          filled: true,
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
                        ),
                        obscureText: isObscured,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Get.to(() => ForgotPasswordScreen());
                          },
                          child: Text(
                            'forgot_password'.tr,
                            style: TextStyle(color: grey),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.05),
                      SizedBox(
                        width: Get.width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: btnColor,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.2),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Process data.
                            }
                            // Get.to(() => HomeScreen());
                          },
                          child: Text(
                            'signin'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.05),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(width: Get.width * 0.05),
                          Expanded(
                            child: Divider(
                              color: lightGrey,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'or_continue_with'.tr,
                            style: TextStyle(color: grey),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              color: lightGrey,
                            ),
                          ),
                          SizedBox(width: Get.width * 0.05),
                        ],
                      ),
                      Column(
                        spacing: 0,
                        children: [
                          Container(
                            width: Get.width * 0.8,
                            height: Get.height * 0.075,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: TextButton.icon(
                              onPressed: () {},
                              iconAlignment: IconAlignment.start,
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.withAlpha(40),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: Get.width * 0.1),
                                shape: RoundedRectangleBorder(
                                  // borderRadius: BorderRadius.circular(8),
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.2),
                                ),
                              ),
                              label: Text('signin_with_google'.tr,
                                  style: TextStyle(color: black)),
                              icon: SvgPicture.asset('assets/icons/google.svg',
                                  height: 20),
                            ),
                          ),
                          // SizedBox(height: Get.height * 0.02),
                          Container(
                            width: Get.width * 0.8,
                            height: Get.height * 0.075,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            // alignment: Alignment.centerLeft,
                            child: TextButton.icon(
                              onPressed: () {},
                              iconAlignment: IconAlignment.start,
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.withAlpha(40),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: Get.width * 0.1),
                                shape: RoundedRectangleBorder(
                                  // borderRadius: BorderRadius.circular(8),
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.2),
                                ),
                              ),
                              label: Text('signin_with_facebook'.tr,
                                  style: TextStyle(color: black)),
                              icon: Icon(
                                Icons.facebook,
                                size: 25,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          // SizedBox(height: Get.height * 0.02),
                          Container(
                            width: Get.width * 0.8,
                            height: Get.height * 0.075,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            // alignment: Alignment.centerLeft,
                            child: TextButton.icon(
                              onPressed: () {},
                              iconAlignment: IconAlignment.start,
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.withAlpha(40),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: Get.width * 0.1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.2),
                                ),
                              ),
                              label: Text(
                                'signin_with_apple'.tr,
                                style: TextStyle(color: black),
                              ),
                              icon: Icon(
                                Icons.apple,
                                color: black,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "dont_have_account".tr,
                              style: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                            TextSpan(
                              text: "register".tr,
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => IntroductionScreen());
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
