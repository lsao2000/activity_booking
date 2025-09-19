import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/activity_categories.dart';
import 'package:activity_booking/core/utils/constants/user_city_name.dart';
// import 'package:activity_booking/features/auth/sign_in/sign_in_screen.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/getx/admin_signup_controller.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/widget/social_media_widget.dart';
import 'package:activity_booking/features/auth/verification_type/presentation/view/verfication_type_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:activity_booking/features/auth/sign_in/presentation/sign_in_screen.dart';

class AdminSignupScreen extends StatelessWidget {
  AdminSignupScreen({super.key});
  final AdminSignupController adminSignupController =
      Get.put(AdminSignupController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: width,
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.05),
            child: Column(
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
                        'resgister_as_admin'.tr,
                        style: TextStyle(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'book_msg_admin'.tr,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Form(
                  key: adminSignupController.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'business_name'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        // controller: adminSignupController.firstNameController,
                        controller: adminSignupController.businessName,
                        textInputAction: TextInputAction.next,
                        // inputFormatters: [
                        //   // FilteringTextInputFormatter.allow(
                        //   //     RegExp(r'[a-zA-Z]')),
                        // ],
                        decoration: InputDecoration(
                          hintText: 'business_name_hint'.tr,
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
                            return 'enter_your_business_name'.tr;
                          } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                            return 'first_name_must_be_alphabetic'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'phone_number'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        controller: adminSignupController.phoneController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        textDirection: TextDirection.ltr,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(9),
                        ],
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: brandColor.withAlpha(25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            color: black,
                            onPressed: () {
                              adminSignupController.choseCountry(context);
                            },
                            constraints: BoxConstraints(
                                minWidth: Get.width * 0.15,
                                minHeight: Get.height * 0.067),
                            icon: Obx(
                              () => Text(
                                adminSignupController.countryCode.value,
                                style: TextStyle(color: grey, fontSize: 16),
                              ),
                            ),
                          ),
                          prefix: SizedBox(width: width * 0.02),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.03),
                          hintText: 'phone_number_hint'.tr,
                          hintStyle: TextStyle(color: grey),
                          fillColor: inputColor,
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
                      Text(
                        'email'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        // controller: adminSignupController.firstNameController,
                        controller: adminSignupController.emailController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          // FilteringTextInputFormatter.allow(
                          //     RegExp(r'[a-zA-Z]')),
                        ],
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
                          } else if (!GetUtils.isEmail(value)) {
                            return 'enter_valid_email'.tr;
                          }
                          return null;
                          // if (value == null || value.isEmpty) {
                          //   return 'enter_your_email'.tr;
                          // }
                          // return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'password'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Obx(
                        () => TextFormField(
                          controller: adminSignupController.passwordController,
                          obscureText:
                              adminSignupController.isPasswordHidden.value,
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                adminSignupController.isPasswordHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: grey,
                              ),
                              onPressed: () {
                                adminSignupController
                                    .changePasswordVisibility();
                              },
                            ),
                            hintText: 'password_hint'.tr,
                            hintStyle: TextStyle(color: grey),
                            fillColor: inputColor,
                            focusColor: brandColor,
                            hoverColor: inputColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: brandColor, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: lightGrey, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter_your_password'.tr;
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                              return 'Password must contain at least one uppercase letter';
                            } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                              return 'Password must contain at least one lowercase letter';
                            } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                              return 'Password must contain at least one digit';
                            } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                                .hasMatch(value)) {
                              return 'Password must contain at least one special character';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'confirm_password'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Obx(
                        () => TextFormField(
                          obscureText: adminSignupController
                              .isConfirmPasswordHidden.value,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          controller:
                              adminSignupController.confirmPasswordController,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                adminSignupController
                                        .isConfirmPasswordHidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: grey,
                              ),
                              onPressed: () {
                                adminSignupController
                                    .changeConfirmPasswordVisibility();
                              },
                            ),
                            hintText: 'password_hint'.tr,
                            hintStyle: TextStyle(color: grey),
                            fillColor: inputColor,
                            focusColor: brandColor,
                            hoverColor: inputColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: brandColor, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: lightGrey, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter_your_confirm_password'.tr;
                            } else if (value !=
                                adminSignupController.passwordController.text) {
                              return 'passwords_do_not_match'.tr;
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: height * 0.02),
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
                        items: UserCityName.cities
                            .map((city) => DropdownMenuItem<String>(
                                  value: city,
                                  child: Text(city),
                                ))
                            .toList(),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: height * 0.02),
                      Text('actvity_category'.tr,
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
                        items: ActivityCategories.categories
                            .map((city) => DropdownMenuItem<String>(
                                  value: city,
                                  child: Text(city),
                                ))
                            .toList(),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'business_description'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        // controller: adminSignupController.firstNameController,
                        maxLines: 6,
                        minLines: 2,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [],
                        decoration: InputDecoration(
                          hintText: 'business_description_hint'.tr,
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
                            return 'enter_your_business_description'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'website_or_social_media'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        // controller: adminSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
                        decoration: InputDecoration(
                          hintText: 'website_or_social_media_hint'.tr,
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
                            return 'enter_your_website_or_social_media'.tr;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.camera_alt_outlined,
                                color: black, size: 30),
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                "upload_business_logo".tr,
                                style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          // ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Checkbox(
                                activeColor: brandColor,
                                value: adminSignupController.isChecked.value,
                                onChanged: (value) {
                                  adminSignupController.changeCheckbox(value);
                                }),
                            SizedBox(width: width * 0.03),
                            Expanded(
                              child: Text(
                                'terms_and_conditions'.tr,
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      // Obx(
                      //   () =>
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: deepOrange,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.3,
                                  vertical: height * 0.01)),
                          onPressed: () {
                            if (!adminSignupController.formKey.currentState!
                                .validate()) {
                              debugPrint("cant go further");
                            } else if (!adminSignupController.isChecked.value) {
                              Get.snackbar(
                                duration: const Duration(seconds: 4),
                                "warning".tr,
                                "check_terms".tr,
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: brandColor.withAlpha(40),
                                colorText: black,
                              );
                            } else {
                              Get.toNamed(VerficationTypeScreen.route);
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
                        // ),
                      ),
                      SizedBox(height: height * 0.02),
                      // SocialMediaWidget(),
                      SocialMediaWidget(),
                      SizedBox(height: Get.height * 0.02),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "have_account".tr,
                                style: TextStyle(
                                  color: Colors.black26,
                                ),
                              ),
                              TextSpan(
                                text: "login".tr,
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(() => SignInScreen());
                                  },
                              ),
                            ],
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
