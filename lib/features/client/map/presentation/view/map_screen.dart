import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/map/presentation/getx/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});
  MapScreenController mapScreenController = Get.put(MapScreenController());
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: Get.width,
            height: Get.height,
            child: FlutterMap(
              mapController: MapController(),

              // options: MapOptions(),
              options: MapOptions(
                initialCenter: const LatLng(33.583760, -7.648748),
                initialZoom: 15,
              ),
              children: [
                TileLayer(
                  // URL template for map tiles
                  // {z} = zoom level, {x} = tile X coordinate, {y} = tile Y coordinate
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

                  // Required: Identify your app (OpenStreetMap policy)
                  userAgentPackageName: 'com.example.app',

                  // Optional: Additional settings
                  // maxZoom: 18,
                  // tileProvider: NetworkTileProvider(), // Default
                ),
                // TileLayer(
                //   urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                //   userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                //   // + many other options
                // ),
                // TileLayer(
                //   urlTemplate:
                //       'https://{s}.google.com/vt/lyrs=m,h&x={x}&y={y}&z={z}&hl=ar-MA&gl=MA',
                //   subdomains: const ['mt0', 'mt1', 'mt2', 'mt3'],
                //   userAgentPackageName: 'com.example.app',
                // ),
                const RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      // onTap: () =>
                      // launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                    ),
                  ],
                ),
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
                    // controller: mapController.searchController,
                    onTap: () {
                      debugPrint("show search");
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
                  },
                  icon: Icon(Icons.tune))
            ],
          ),
        ),
      ],
    );
  }
}
