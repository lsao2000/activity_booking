import 'package:flutter/material.dart';

class MapSearchScreen extends StatelessWidget {
  const MapSearchScreen({super.key});
  static String route = "/map_search_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(),
      body: Center(
        child: Text("Search screen"),
      ),
    ));
  }
}
