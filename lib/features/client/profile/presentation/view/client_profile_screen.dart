import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/favorites/presentation/view/client_favorite_screen.dart';
import 'package:activity_booking/features/client/payment/presentation/view/client_payment_screen.dart';
import 'package:activity_booking/features/client/profile/presentation/view/client_edit_profile.dart';
import 'package:activity_booking/features/client/settings/presentation/view/client_settings_screen.dart';
import 'package:activity_booking/features/client/support/presentation/view/client_support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ClientProfileScreen extends StatelessWidget {
  const ClientProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Get.width * 0.4),
                child: Image.network(
                  "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=500",
                  width: Get.width * 0.26,
                  fit: BoxFit.fill,
                  height: Get.height * 0.12,
                ),
              ),
              SizedBox(
                height: Get.height * 0.008,
              ),
              Text(
                "Lahcen Skaih",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "${"rabat".tr}, ${"morocco".tr}",
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: userCity),
              ),
              SizedBox(
                height: Get.height * 0.008,
              ),
              SizedBox(
                width: Get.width * 0.9,
                height: Get.height * 0.05,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint("clicked");
                    Get.toNamed(ClientEditProfile.route);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: btnEditProfile,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "edit_profile".tr,
                    style: TextStyle(color: black, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("bookings".tr),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("favorites".tr),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.28,
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("reviews".tr),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
            height: Get.height * .4,
            width: Get.width,
            // padding: EdgeInsets.symmetric(horizontal: Get.width*0.01),
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "account".tr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/email.svg',
                      ),
                      // Icon(Icons.email_outlined,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "email".tr,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "lahcenenligne@gmail.com",
                            style: TextStyle(color: grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/phone.svg',
                      ),
                      // Icon(Icons.email_outlined,size: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "phone_number".tr,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "+212777024722",
                            style: TextStyle(color: grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "quick_links".tr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("payment");
                      Get.toNamed(ClientPaymentScreen.route);
                    },
                    child: Container(
                      height: Get.height * 0.06,
                      child: Row(
                        spacing: 20,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/payment.svg',
                          ),
                          Text(
                            "payment_methods".tr,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("support");
                      Get.toNamed(ClientSupportScreen.route);
                    },
                    child: Container(
                      height: Get.height * 0.06,
                      child: Row(
                        spacing: 20,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/support.svg',
                          ),
                          // Icon(Icons.email_outlined,size: 30,),
                          Text(
                            "support".tr,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        debugPrint("setting");
                        Get.toNamed(ClientSettingsScreen.route);
                      },
                      child: Container(
                        height: Get.height * 0.06,
                        child: Row(
                          spacing: 20,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/setting.svg',
                            ),
                            // Icon(Icons.email_outlined,size: 30,),
                            Text(
                              "settings".tr,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        debugPrint("favorite");
                        Get.toNamed(ClientFavoriteScreen.route);
                      },
                      child: SizedBox(
                        height: Get.height * 0.06,
                        child: Row(
                          spacing: 20,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/favorite.svg',
                            ),
                            // Icon(Icons.email_outlined,size: 30,),
                            Text(
                              "favorites".tr,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("logout");
                    },
                    child: Container(
                      height: Get.height * 0.06,
                      child: Row(
                        spacing: 20,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logout.svg',
                          ),
                          // Icon(Icons.email_outlined,size: 30,),
                          Text(
                            "logout".tr,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
