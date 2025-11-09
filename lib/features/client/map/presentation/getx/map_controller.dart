import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapScreenController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final MapController mapController = MapController();
  LatLng currentLocation = LatLng(33.5731, -7.5898);
  LatLng currentCenter = LatLng(33.5731, -7.5898);
  List<Marker> markers = [];

  @override
  void onInit() async {
    super.onInit();
    await getUserLocation();
    // _addMarker();
  }

  Future<void> getUserLocation() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        debugPrint("Location services are disabled");
        return;
      }

      // Check location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          debugPrint('Location permission denied');
          return;
        }
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      // Update map center and add marker
      currentCenter = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
          point: currentCenter,
          child: Icon(
            Icons.location_on,
            color: Colors.green,
            size: 30,
          ),
        ),
      );
      // Move map to user location with animation
      mapController.move(currentCenter, 15.0);
      // _showSnackBar('Location found!');
    } catch (e) {
      // _showSnackBar('Error getting location: $e');
    }
  }

  void addMarker() {
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

