import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
// import 'package:activity_booking/core/color.dart';
// import 'package:activity_booking/features/client/map/presentation/getx/map_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:get/get.dart';
// import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:geocoding/geocoding.dart';

class MapScreenController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final MapController mapController = MapController();
  LatLng currentLocation = LatLng(33.5731, -7.5898);
  LatLng currentCenter = LatLng(33.5731, -7.5898);
  List<Marker> markers = [];

  @override
  void onInit() {
    super.onInit();
    _addMarker();
  }

  Future<void> _getUserLocation() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // _showSnackBar('Location services are disabled');
        return;
      }

      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // _showSnackBar('Location permission denied');
          return;
        }
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Update map center and add marker
      // setState(() {
      currentCenter = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
          point: currentCenter,
          child: Icon(
            Icons.my_location,
            color: Colors.blue,
            size: 40,
          ),
        ),
      );
      // });
      // Move map to user location with animation
      mapController.move(currentCenter, 15.0);
      // _showSnackBar('Location found!');
    } catch (e) {
      // _showSnackBar('Error getting location: $e');
    }
  }
  // Future<void> searchAdress()async{
  //   String query = searchController.text.trim();
  //   if (query.isEmpty) {
  //     // _showSnackBar('Please enter an address');
  //     return;
  //   }
  //
  //   try {
  //     // Convert address to coordinates (e.g., "Marrakech" -> Lat: 31.6, Lng: -8.0)
  //     List<Location> locations = await locationFromAddress(query);
  //
  //     if (locations.isNotEmpty) {
  //       Location location = locations.first;
  //       LatLng searchedLocation = LatLng(location.latitude, location.longitude);
  //
  //       // Add marker at searched location
  //       setState(() {
  //         markers.add(
  //           Marker(
  //             point: searchedLocation,
  //             builder: (ctx) => Column(
  //               children: [
  //                 Container(
  //                   padding: EdgeInsets.all(4),
  //                   decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(4),
  //                   ),
  //                   child: Text(
  //                     query,
  //                     style: TextStyle(fontSize: 10),
  //                   ),
  //                 ),
  //                 Icon(Icons.location_on, color: Colors.green, size: 40),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  //
  //       // Move map to searched location
  //       mapController.move(searchedLocation, 13.0);
  //       _showSnackBar('Found: $query');
  //
  //       // Clear search field
  //       searchController.clear();
  //     }
  //   } catch (e) {
  //     _showSnackBar('Location not found');
  //   }
  // }

  void _addMarker() {
    markers.add(
      Marker(
        child: Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        ),
        point: currentLocation,
        width: 80,
        height: 80,
      ),
    );
  }
}
