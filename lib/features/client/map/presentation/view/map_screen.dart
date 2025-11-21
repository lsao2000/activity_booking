import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/map/presentation/getx/map_controller.dart';
import 'package:activity_booking/features/client/map/presentation/view/filter_map_screen.dart';
import 'package:activity_booking/features/client/map/presentation/view/map_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});
  final MapScreenController mapScreenController =
      Get.put(MapScreenController());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: Get.width,
            height: Get.height,
            child: FlutterMap(
              mapController: mapScreenController.mapController,
              options: MapOptions(
                // initialCenter: const LatLng(33.583760, -7.648748),
                initialCenter: mapScreenController.currentCenter,
                initialZoom: 15,
              ),
              children: [
                TileLayer(
                  // urlTemplate: "https://api.tiles.mapbox.com/v4/"
                  //     "{id}/{z}/{x}/{y}{r}.png?access_token={accessToken}",
                  // additionalOptions: {
                  //   'accessToken': '<PUT_ACCESS_TOKEN_HERE>',
                  //   'id': 'mapbox.streets',
                  // },
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(
                  markers: mapScreenController.markers,
                  rotate: true,
                ),
                // TileLayer(
                //   urlTemplate:
                //       'https://{s}.google.com/vt/lyrs=m,h&x={x}&y={y}&z={z}&hl=ar-MA&gl=MA',
                //   subdomains: const ['mt0', 'mt1', 'mt2', 'mt3'],
                //   userAgentPackageName: 'com.example.app',
                // ),
                // const RichAttributionWidget(
                //   attributions: [
                //     TextSourceAttribution(
                //       'OpenStreetMap contributors',
                //       // onTap: () =>
                //       // launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                //     ),
                //   ],
                // ),
              ],
            )),
        Positioned(
          left: Get.width * 0.06,
          right: Get.width * 0.06,
          top: Get.height * 0.03,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            spacing: 4,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: inputColor,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child:
                      // Obx(
                      //   () =>
                      TextField(
                    controller: mapScreenController.searchController,
                    onTap: () {
                      // debugPrint("show search");
                      Get.toNamed(MapSearchScreen.route);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search for activities',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                        size: 24,
                      ),
                      // suffixIcon:
                      //     mapController.searchController.text.isNotEmpty
                      //         ? IconButton(
                      //             icon: Icon(
                      //               Icons.clear,
                      //               color: Colors.grey.shade600,
                      //             ),
                      //             onPressed: () {
                      //               mapController.searchController.clear();
                      //             },
                      //           )
                      //         : null,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                    // ),
                  ),
                ),
              ),
              IconButton(
                  style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.1),
                      ),
                      backgroundColor: inputColor),
                  onPressed: () {
                    debugPrint("filter");
                    Get.toNamed(FilterMapScreen.route);
                  },
                  icon: Icon(Icons.tune))
            ],
          ),
        ),
      ],
    );
  }
}
