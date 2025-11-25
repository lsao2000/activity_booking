import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/themes/core_styles.dart';
import 'package:activity_booking/features/client/bookings/presentation/view/booking_screen.dart';
import 'package:activity_booking/features/client/home/presentation/view/client_home_screen.dart';
import 'package:activity_booking/features/client/main/presentation/getx/main_controller.dart';
import 'package:activity_booking/features/client/map/presentation/view/map_screen.dart';
import 'package:activity_booking/features/client/profile/presentation/view/client_profile_screen.dart';
import 'package:activity_booking/features/client/search/presentation/view/client_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  static final String route = "/main_client_screen";
  MainController mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Obx(
        () => SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: Get.height * 0.08,
              shadowColor: black,
              elevation: 2,
              backgroundColor: Colors.white,
              title: Container(
                margin: EdgeInsets.symmetric(
                  vertical: Get.height * 0.02,
                ),
                child: Text(
                  "brand_name".tr,
                  style: appBarStyle,
                ),
              ),
              automaticallyImplyLeading: false,
              actions: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.notifications_outlined),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
              ],
            ),
            body: IndexedStack(
              index: mainController.selectedIndex.value,
              children: [
                ClientHomeScreen(),
                BookingScreen(),
                ClientSearchScreen(),
                MapScreen(),
                ClientProfileScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: brandColor,
                // unselectedItemColor: unselectedItem,
                unselectedItemColor: grey,
                currentIndex: mainController.selectedIndex.value,
                onTap: mainController.changeIndex,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                // unselectedLabelStyle: TextStyle(color: grey,
                // fontWeight: FontWeight.bold),
                // selectedLabelStyle: TextStyle(
                //   fontWeight: FontWeight.bold,
                // ),
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "home".tr,
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.calendar_month,
                      ),
                      label: "booking".tr),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                      ),
                      label: "search".tr),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.location_on,
                      ),
                      label: "map".tr),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: "profile".tr),
                ]),
          ),
        ),
      ),
    );
  }
}
