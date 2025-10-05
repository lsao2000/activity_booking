import 'package:activity_booking/features/client/bookings/presentation/getx/booking_controller.dart';
import 'package:activity_booking/features/client/bookings/presentation/widget/trip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingTripsView extends StatelessWidget {
  final controller = Get.find<BookingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.upcomingTrips.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.event_busy, size: 64, color: Colors.grey.shade400),
              SizedBox(height: 16),
              Text(
                'No upcoming trips',
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
        itemCount: controller.upcomingTrips.length,
        itemBuilder: (context, index) {
          return TripCard(trip: controller.upcomingTrips[index]);
        },
      );
    });
  }
}
