import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/search/presentation/getx/client_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterTypeWidget extends StatelessWidget {
  FilterTypeWidget({super.key});
  ClientSearchController clientSearchController =
      Get.find<ClientSearchController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Obx(
        () => Row(
          spacing: 6,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: clientSearchController.selectedSortingType[0]
                    ? brandColor
                    : inputColor,
                minimumSize: Size(90, 30),
              ),
              onPressed: () {
                debugPrint("selected Date");
                clientSearchController.changeSortingType(0);
              },
              label: Text(
                "date".tr,
                style: TextStyle(
                    color: clientSearchController.selectedSortingType[0]
                        ? white
                        : grey),
              ),
              icon: Icon(
                Icons.calendar_month,
                color: clientSearchController.selectedSortingType[0]
                    ? white
                    : grey,
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: clientSearchController.selectedSortingType[1]
                    ? brandColor
                    : inputColor,
                minimumSize: Size(90, 30),
              ),
              onPressed: () {
                debugPrint("selected price range");
                clientSearchController.changeSortingType(1);
              },
              label: Text(
                "price_range".tr,
                style: TextStyle(
                    color: clientSearchController.selectedSortingType[1]
                        ? white
                        : grey),
              ),
              icon: Icon(
                Icons.attach_money,
                color: clientSearchController.selectedSortingType[1]
                    ? white
                    : grey,
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: clientSearchController.selectedSortingType[2]
                    ? brandColor
                    : inputColor,
                minimumSize: Size(90, 30),
              ),
              onPressed: () {
                debugPrint("selected rating");
                clientSearchController.changeSortingType(2);
              },
              label: Text(
                "rating".tr,
                style: TextStyle(
                    color: clientSearchController.selectedSortingType[2]
                        ? white
                        : grey),
              ),
              icon: Icon(
                Icons.star_border_outlined,
                color: clientSearchController.selectedSortingType[2]
                    ? white
                    : grey,
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: inputColor,
                minimumSize: Size(90, 30),
              ),
              onPressed: () {},
              label: Text(
                "filter".tr,
                style: TextStyle(color: grey),
              ),
              icon: Icon(
                Icons.sort,
                color: grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
