import 'package:flutter/material.dart';

class ClientSettingsScreen extends StatelessWidget {
  const ClientSettingsScreen({super.key});
  static final String route = "/client_settings_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Setting Screen"),
        ),
      ),
    );
  }
}
