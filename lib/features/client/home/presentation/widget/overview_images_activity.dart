import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverviewImagesActivity extends StatelessWidget {
  const OverviewImagesActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.23,
      width: Get.width,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            if (index + 1 == 4) {
              return Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
                  fit: BoxFit.cover,
                  width: Get.width * 0.9,
                ),
              ),
            );
          }),
    );
  }
}
