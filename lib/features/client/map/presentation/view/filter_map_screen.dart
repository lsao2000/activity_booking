import 'package:flutter/material.dart';

class FilterMapScreen extends StatelessWidget {
  const FilterMapScreen({super.key});
  static final String route = "/filter_map_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Filter Screen"),
        ),
      ),
    );
  }
}
