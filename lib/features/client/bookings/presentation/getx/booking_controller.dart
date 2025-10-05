import 'package:activity_booking/features/client/bookings/domain/entities/trip/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  var upcomingTrips = <Trip>[].obs;
  var pastTrips = <Trip>[].obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    loadTrips();
  }

  void loadTrips() {
    // Sample upcoming trips data
    upcomingTrips.value = [
      Trip(
        id: '1',
        title: 'Atlas Mountain Day Trip',
        imageUrl:
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
        totalPrice: 150,
        date: 'Aug 15, 2025',
        time: '8:00 AM',
      ),
      Trip(
        id: '2',
        title: 'Sahara Desert Adventure',
        imageUrl:
            'https://images.unsplash.com/photo-1509316785289-025f5b846b35?w=400',
        totalPrice: 350,
        date: 'Aug 20, 2025',
        time: '6:00 AM',
      ),
      Trip(
        id: '3',
        title: 'Coastal Hiking Tour',
        imageUrl:
            'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=400',
        totalPrice: 200,
        date: 'Aug 25, 2025',
        time: '9:00 AM',
      ),
    ];

    // Sample past trips data
    pastTrips.value = [
      Trip(
        id: '4',
        title: 'Historic Marrakech Tour',
        imageUrl:
            'https://images.unsplash.com/photo-1489749798305-4fea3ae63d43?w=400',
        totalPrice: 120,
        date: 'Jul 10, 2025',
        time: '10:00 AM',
      ),
      Trip(
        id: '5',
        title: 'Chefchaouen Blue City',
        imageUrl:
            'https://images.unsplash.com/photo-1519904981063-b0cf448d479e?w=400',
        totalPrice: 180,
        date: 'Jun 15, 2025',
        time: '7:30 AM',
      ),
    ];
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

