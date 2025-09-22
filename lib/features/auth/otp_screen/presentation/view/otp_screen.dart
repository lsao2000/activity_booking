import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/auth/otp_screen/presentation/getx/otp_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  static final String route = "/otp_screen";
  OtpScreenController otpScreenController = Get.put(OtpScreenController());

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
                    otpScreenController.emailType.value
                        ? "enter_six_digit_code_email".tr
                        : "enter_six_digit_code_phone".tr,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Form(
                  key: otpScreenController.formKey,
                  child: Column(
                    children: [
                      Pinput(
                        focusedPinTheme: PinTheme(
                          width: width * 0.10,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: otpColor,
                            borderRadius: BorderRadius.circular(width * 0.02),
                            border: Border.all(color: deepOrange, width: 2),
                          ),
                        ),
                        defaultPinTheme: PinTheme(
                          width: width * 0.10,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: otpColor,
                            borderRadius: BorderRadius.circular(width * 0.02),
                            border: Border.all(color: black26, width: 1),
                          ),
                        ),
                        length: 6,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                        validator: (value) {
                          if (value != "492929") {
                            return "Incorrect Otp Code";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: deepOrange,
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.3, vertical: height * 0.01),
                        ),
                        onPressed: () {
                          if (otpScreenController.formKey.currentState!
                              .validate()) {
                            // Get.toNamed("");
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("✅ Verified!"),
                                content: Text(
                                    "Your account has been verified successfully! Welcome to Activity Booking!"),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("Great!"),
                                  ),
                                ],
                              ),
                            );
                            // showDialog(
                            //     context: context,
                            //     builder: (ctx) {
                            //       return Container(
                            //         child: Column(
                            //           children: [
                            //             Text(
                            //                 "Your account has been created successfully"),
                            //             Text(""),
                            //           ],
                            //         ),
                            //       );
                            //     });
                          }
                        },
                        child: Text(
                          "verify".tr,
                          style: TextStyle(
                              fontSize: 20,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                    ],
                  ),
                ),
                // OtpTextField(
                //   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //   keyboardType: TextInputType.number,
                //   numberOfFields: 6,
                //   borderColor: black26,
                //   fieldWidth: Get.width * 0.12,
                //   focusedBorderColor: deepOrange,
                //   disabledBorderColor: black,
                //   enabledBorderColor: black26,
                //   onCodeChanged: (value) {},
                //   filled: true,
                //   fillColor: otpColor,
                //   borderRadius: BorderRadius.circular(Get.width * 0.02),
                //   showFieldAsBox: true,
                //   onSubmit: (value) {
                //     debugPrint("submited $value");
                //   },
                // ),
                InkWell(
                  onTap: () {
                    debugPrint("resend code");
                  },
                  child: Text(
                    "resend_code".tr,
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
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
