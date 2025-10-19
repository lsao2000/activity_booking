import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    debugPrint("map controller");
  }
}
