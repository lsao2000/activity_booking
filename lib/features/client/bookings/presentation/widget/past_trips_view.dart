import 'package:activity_booking/features/client/bookings/presentation/widget/trip_card.dart';
import 'package:flutter/material.dart';
import 'package:activity_booking/features/client/bookings/presentation/getx/booking_controller.dart';
import 'package:get/get.dart';

class PastTripsView extends StatelessWidget {
  final controller = Get.find<BookingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.pastTrips.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.history, size: 64, color: Colors.grey.shade400),
              SizedBox(height: 16),
              Text(
                "no_upcoming".tr,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        );
      }

      return ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: controller.pastTrips.length,
        itemBuilder: (context, index) {
          return TripCard(trip: controller.pastTrips[index]);
        },
      );
    });
  }
}
