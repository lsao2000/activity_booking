import 'package:activity_booking/features/client/search/presentation/getx/client_search_controller.dart';
import 'package:activity_booking/features/client/search/presentation/widget/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityItemsWidget extends StatelessWidget {
  ClientSearchController clientSearchController =
      Get.find<ClientSearchController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemCount: clientSearchController.items.length,
          itemBuilder: (ctx, index) {
            final activity =
                clientSearchController.items[index];
            return Padding(
              padding: EdgeInsets.only(bottom: 16),
              // padding: EdgeInsets.only(bottom: 16),
              child: ActivityCard(
                rate: activity.rate,
                reviews: activity.reviews,
                title: activity.title,
                description: activity.description,
                price: activity.price,
                imageUrl: activity.imgUrl,
              ),
            );
          },
        ),
      ),
    );
  }
}

// Alternative Vertical Card Design
