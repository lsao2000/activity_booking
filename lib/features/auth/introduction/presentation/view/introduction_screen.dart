import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/auth/introduction/presentation/widget/language_drop_down.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  text: "welcome".tr,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: "Yalla! ",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(
                          240,
                          90,
                          40,
                          1.0,
                        ),
                        fontSize: 30,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 27.0,
                        color: Color.fromRGBO(
                          23,
                          20,
                          18,
                          1.0,
                        ),
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: "discover_and_book".tr,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: deepOrange,
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1 , vertical: height * 0.02)),
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "continue_as_client".tr,
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: deepOrange,
                    backgroundColor: lightGrey,
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: height * 0.02)),
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "continue_as_admin".tr,
                    style: TextStyle(color: black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.2),
              LanguageDropdown(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "already_user".tr,
                      style: TextStyle(
                        color: Colors.black26,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "login".tr,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint("Login tapped");
                          // Handle login tap
                        },
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
