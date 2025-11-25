import 'package:flutter/material.dart';

class ClientEditProfile extends StatelessWidget {
  const ClientEditProfile({super.key});
  static final String route = "/client_edit_profile";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("edit profile"),
      ),
    ));
  }
}
