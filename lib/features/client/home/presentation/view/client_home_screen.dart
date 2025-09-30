import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/activity_categories.dart';
import 'package:activity_booking/core/utils/themes/core_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientHomeScreen extends StatelessWidget {
  const ClientHomeScreen({super.key});
  static final String route = "/client-home";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: Get.height * 0.08,
          shadowColor: black,
          elevation: 2,
          backgroundColor: white,
          title: Container(
            margin: EdgeInsets.symmetric(
              vertical: Get.height * 0.02,
            ),
            child: Text(
              "brand_name".tr,
              style: appBarStyle,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            InkWell(
              onTap: () {},
              child: Icon(Icons.notifications_outlined),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${'user_greeting'.tr}, Lahcen!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                SizedBox(
                  height: Get.height * 0.23,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
                              fit: BoxFit.cover,
                              width: Get.width * 0.9,
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                SizedBox(
                  height: Get.height * 0.03,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: ActivityCategories.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        String item = ActivityCategories.categories[index];
                        return Container(
                        alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              color: black26.withAlpha(20),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.03),
                          child: Text(
                            item,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
