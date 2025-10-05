import 'package:activity_booking/features/client/bookings/presentation/getx/booking_controller.dart';
import 'package:activity_booking/features/client/bookings/presentation/widget/past_trips_view.dart';
import 'package:activity_booking/features/client/bookings/presentation/widget/upcoming_trips_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});
  final controller = Get.put(BookingController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom TabBar
        Container(
          color: Colors.white,
          child: TabBar(
            controller: controller.tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade600,
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            indicatorColor: Colors.black,
            indicatorWeight: 2.5,
            tabs: [
              Tab(text: 'Upcoming'),
              Tab(text: 'Past'),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: controller.tabController,
            children: [
              UpcomingTripsView(),
              PastTripsView()
            ],
          ),
        ),
      ],
      // ),
    );
  }
}
// Upcoming Trips View
// Past Trips View

// Trip Card Widget
