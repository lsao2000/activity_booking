import 'package:flutter/material.dart';

class ClientPaymentScreen extends StatelessWidget {
  const ClientPaymentScreen({super.key});
  static final String route = "/client_payment_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Payment Screen"),
      ),
    ));
  }
}
