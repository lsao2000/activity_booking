import 'package:activity_booking/features/client/home/presentation/getx/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverviewImagesActivity extends StatelessWidget {
  OverviewImagesActivity({super.key});
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.23,
      width: Get.width,
      child: ListView.builder(
          itemCount: homeController.lstItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            String image = homeController.lstItems[index];
            if (index + 1 == homeController.lstItems.length) {
              return Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: Get.width * 0.9,
                  ),
                ),
              );
            }
            return Container(
              padding: EdgeInsets.only(left: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image,
                  // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
                  fit: BoxFit.cover,
                  width: Get.width * 0.9,
                ),
              ),
            );
          }),
    );
  }
}
