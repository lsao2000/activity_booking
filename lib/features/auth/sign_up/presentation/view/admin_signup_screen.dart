import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/activity_categories.dart';
import 'package:activity_booking/core/utils/constants/user_city_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AdminSignupScreen extends StatelessWidget {
  const AdminSignupScreen({super.key});
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
              // crossAxisAlignment: CrossAxisAlignment.start,
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
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Form(
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
                        // controller: clientSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
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
                            return 'enter_your_first_name'.tr;
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
                        // controller: clientSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
                        decoration: InputDecoration(
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
                          // else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          //   return 'first_name_must_be_alphabetic'.tr;
                          // }
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
                        // controller: clientSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
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
                          }
                          return null;
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
                      TextFormField(
                        // controller: clientSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
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
                          // else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          //   return 'first_name_must_be_alphabetic'.tr;
                          // }
                          return null;
                        },
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
                      TextFormField(
                        // controller: clientSignupController.firstNameController,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')),
                        ],
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
                          // else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          //   return 'first_name_must_be_alphabetic'.tr;
                          // }
                          return null;
                        },
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
                        items:ActivityCategories.categories
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
                        // controller: clientSignupController.firstNameController,
                        maxLines: 6,
                        minLines: 2,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          // FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                        ],
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
                        // controller: clientSignupController.firstNameController,
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
                          // else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          //   return 'first_name_must_be_alphabetic'.tr;
                          // }
                          return null;
                        },
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.camera_alt_outlined,
                              color: black, size: 30),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: lightGrey,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.1,
                                      vertical: height * 0.01)),
                              onPressed: () {},
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
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Checkbox(
                              activeColor: brandColor,
                              value: false,
                              onChanged: (value) {
                                // clientSignupController.changeCheckbox(value);
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
