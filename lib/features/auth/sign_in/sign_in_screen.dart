import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Sign In')),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
          child: Column(
            children: [
              Text(
                'Yalla!',
                style: TextStyle(color: brandColor,
                fontSize: 40,
                fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.8,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign In'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
