import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1.0)),
        child: SingleChildScrollView(
          child: Container(
            height: 852.0,
            width: MediaQuery.of(context).size.width,
            child: LayoutBuilder(
              builder: (BuildContext context, constraints) => Stack(
                children: [
                  //Depth 2, Frame 1
                  Positioned(
                    left: 0.0,
                    top: 128.0,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 390.0,
                        height: 137.0,
                        padding: EdgeInsets.only(
                          left: 16.0,
                          top: 20.0,
                          right: 16.0,
                          bottom: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: constraints.maxWidth,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: RichText(
                                  text: TextSpan(
                                    text: "Welcome to",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 27.0,
                                      color: Color.fromRGBO(
                                        137,
                                        137,
                                        136,
                                        1.0,
                                      ),
                                      decoration: TextDecoration.none,
                                    ),
                                    children: [
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
                                        text: "Yalla! ",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(
                                            240,
                                            90,
                                            40,
                                            1.0,
                                          ),
                                          fontSize: 27.0,
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
                                        text:
                                            "Discover and book unique experiences",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 27.0,
                                          color: Color.fromRGBO(
                                            137,
                                            137,
                                            136,
                                            1.0,
                                          ),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), //Depth 2, Frame 2
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

                                                                                          // color: Color.fromRGBO(
                                                                                          //   23,
                                                                                          //   20,
                                                                                          //   18,
                                                                                          //   1.0,
                                                                                          // ),

                                                        // color: Color.fromRGBO(
                                                        //   242,
                                                        //   130,
                                                        //   36,
                                                        //   1.0,
                                                        // ),
