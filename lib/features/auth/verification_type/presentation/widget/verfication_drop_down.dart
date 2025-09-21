import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/user_city_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerficationDropDown extends StatelessWidget {
  VerficationDropDown({super.key});
  final List<String> options = ["email", "phone_number"];
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            // alignment: Alignment.centerLeft,
            value: options[0].tr,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: black.withAlpha(59), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: black.withAlpha(59), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: black.withAlpha(59), width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (value) {
              if (value == null) {
                return "Please chose";
              }
              return null;
            },
            items: options
                .map(
                  (option) => DropdownMenuItem<String>(
                    value: option.tr,
                    // alignment: Alignment.topRight,
                    child: Text(
                      option.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 18),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
