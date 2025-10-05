import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/themes/core_styles.dart';
import 'package:activity_booking/features/client/home/presentation/widget/activity_category.dart';
import 'package:activity_booking/features/client/home/presentation/widget/nearby_activity.dart';
import 'package:activity_booking/features/client/home/presentation/widget/overview_images_activity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientHomeScreen extends StatelessWidget {
  const ClientHomeScreen({super.key});
  static final String route = "/client-home";
  @override
  Widget build(BuildContext context) {
    return
        // SafeArea(
        //   child: Scaffold(
        //     appBar: AppBar(
        //       toolbarHeight: Get.height * 0.08,
        //       shadowColor: black,
        //       elevation: 2,
        //       backgroundColor: Colors.white,
        //       title: Container(
        //         margin: EdgeInsets.symmetric(
        //           vertical: Get.height * 0.02,
        //         ),
        //         child: Text(
        //           "brand_name".tr,
        //           style: appBarStyle,
        //         ),
        //       ),
        //       automaticallyImplyLeading: false,
        //       actions: [
        //         InkWell(
        //           onTap: () {},
        //           child: Icon(Icons.notifications_outlined),
        //         ),
        //         SizedBox(
        //           width: Get.width * 0.02,
        //         ),
        //       ],
        //     ),
        //     body:
        SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
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
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "For You",
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
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_month), label: "booking"),
      // ]),
      // ),
    );
  }
}
