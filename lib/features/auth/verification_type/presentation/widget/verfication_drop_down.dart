import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/user_city_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerficationDropDown extends StatelessWidget {
  final List<String> options = ["email", "phone_number"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Form(
        child: Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            // fillColor: inputColor,
            // focusColor: brandColor,
            // hoverColor: inputColor,
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
            // filled: true,
          ),
          validator: (value) {
            if (value == null) {
              return "Please chose";
            }
            return null;
          },
          items: options
              .map((option) => DropdownMenuItem<String>(
                    value: option.tr,
                    child: Text(option.tr),
                  ))
              .toList(),
          onChanged: (value) {},
        )
      ],
    ));
  }
}
