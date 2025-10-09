import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/search/presentation/getx/client_search_controller.dart';
import 'package:activity_booking/features/client/search/presentation/widget/activity_items_widget.dart';
import 'package:activity_booking/features/client/search/presentation/widget/filter_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientSearchScreen extends StatelessWidget {
  ClientSearchScreen({super.key});
  ClientSearchController clientSearchController =
      Get.put(ClientSearchController());
  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey('search_column'),
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: Get.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: inputColor,
          ),
          child: TextFormField(
            controller: clientSearchController.searchController,
            onChanged: (value) async {
              await clientSearchController.searchForQuery();
            },
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: grey,
                ),
                border: InputBorder.none),
          ),
        ),
        FilterTypeWidget(),
        Obx(
          () => Text(
            "${clientSearchController.items.length}+ Results",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        ActivityItemsWidget(),
      ],
    );
  }
}
