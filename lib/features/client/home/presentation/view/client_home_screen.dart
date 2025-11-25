import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/home/presentation/getx/home_controller.dart';
import 'package:activity_booking/features/client/home/presentation/widget/activity_category.dart';
import 'package:activity_booking/features/client/home/presentation/widget/nearby_activity.dart';
import 'package:activity_booking/features/client/home/presentation/widget/overview_images_activity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientHomeScreen extends StatelessWidget {
  ClientHomeScreen({super.key});
  static final String route = "/client-home";
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // padding: EdgeInsets.only(left: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "${'user_greeting'.tr}, Lahcen!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            OverviewImagesActivity(),
            SizedBox(
              height: Get.height * 0.03,
            ),
            ActivityCategory(),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "for_you".tr,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: black),
              ),
            ),
            SizedBox(height: Get.height * 0.01),
            NearbyActivity()
          ],
        ),
      ),
      // ),
    );
  }
}
