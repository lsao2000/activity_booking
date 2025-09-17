// Widget
import 'package:flutter/material.dart';
import 'package:activity_booking/core/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Flex(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          direction: Axis.vertical,
          children: [
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
            Container(
              width: Get.width * 0.8,
              height: Get.height * 0.06,
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.005),
              child: TextButton.icon(
                onPressed: () {},
                iconAlignment: IconAlignment.start,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.withAlpha(40),
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: Get.width * 0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Get.width * 0.2),
                  ),
                ),
                label: Text('signin_with_google'.tr,
                    style: TextStyle(color: black)),
                icon: SvgPicture.asset('assets/icons/google.svg', height: 20),
              ),
            ),
            // SizedBox(height: Get.height * 0.02),
            Container(
              width: Get.width * 0.8,
              height: Get.height * 0.06,
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.005),
              child: TextButton.icon(
                onPressed: () {},
                iconAlignment: IconAlignment.start,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.withAlpha(40),
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: Get.width * 0.1),
                  shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderRadius: BorderRadius.circular(Get.width * 0.2),
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
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.005),
              height: Get.height * 0.06,
              child: TextButton.icon(
                onPressed: () {},
                iconAlignment: IconAlignment.start,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.withAlpha(40),
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: Get.width * 0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Get.width * 0.2),
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
          ]),
    );
  }
}
