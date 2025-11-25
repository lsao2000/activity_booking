import 'package:flutter/material.dart';

class ClientSupportScreen extends StatelessWidget {
  const ClientSupportScreen({super.key});
  static final String route = "/client_support_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Support Screen"),
      ),
    ));
  }
}
