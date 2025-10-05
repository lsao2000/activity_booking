import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<int> selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
