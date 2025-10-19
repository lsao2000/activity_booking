import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/map/presentation/getx/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});
  MapController mapController = Get.put(MapController());
  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                    controller: mapController.searchController,
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
        SizedBox(
            width: Get.width,
            height: Get.height,
            child: FlutterMap(
            // mapController: ,
            children: [
            ])
            // GoogleMap(
            //     initialCameraPosition:
            //         CameraPosition(target: _center, zoom: 11.0)),
            )
      ],
    );
  }
}
