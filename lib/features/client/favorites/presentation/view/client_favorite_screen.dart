import 'package:flutter/material.dart';

class ClientFavoriteScreen extends StatelessWidget {
  const ClientFavoriteScreen({super.key});
  static final String route = "/client_favorite_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Favorite Screen"),
        ),
      ),
    );
  }
}
