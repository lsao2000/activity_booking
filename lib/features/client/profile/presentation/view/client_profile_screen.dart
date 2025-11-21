import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
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
                "Rabat, Morocco",
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: userCity),
              ),
              Row(
                children: [],
              )
            ],
          ),
        )
      ],
    );
  }
}
