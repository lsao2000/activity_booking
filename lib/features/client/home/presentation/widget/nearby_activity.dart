import 'package:activity_booking/core/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearbyActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // height: Get.height * 0.03,
          height: Get.height * 0.23,
          width: Get.width,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                if (index + 1 == 4) {
                  return Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
                            fit: BoxFit.fill,
                            width: Get.width * 0.45,
                            height: Get.height * 0.16,
                          ),
                        ),
                        Container(
                          // height: 10,
                          width: Get.width * 0.45,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Sunset Camel Ride",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Marrakech . 4.8",
                                style: TextStyle(
                                    color: brandColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            WidgetSpan(
                                child: Icon(
                              Icons.star,
                              size: Get.width * 0.04,
                              color: brandColor,
                            )),
                          ]),
                        )
                      ],
                    ),
                  );
                }
                return Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38r39NMGm-5S7oBdrfUm2y4L-bLU9ljUSAg&s",
                          fit: BoxFit.fill,
                          width: Get.width * 0.45,
                          height: Get.height * 0.16,
                        ),
                      ),
                      Container(
                        width: Get.width * 0.45,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          "Sunset Camel Ride",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Marrakech . 4.8",
                              style: TextStyle(
                                  color: brandColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                          WidgetSpan(
                              child: Icon(
                            Icons.star,
                            size: Get.width * 0.04,
                            color: brandColor,
                          )),
                          // TextSpan(
                          //   text: " . \$40",
                          //   style: TextStyle(
                          //       color: brandColor,
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w600),
                          // ),
                        ]),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
