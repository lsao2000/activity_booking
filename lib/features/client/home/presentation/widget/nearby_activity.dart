import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/features/client/home/domain/entities/nearby_category_entity.dart';
import 'package:activity_booking/features/client/home/presentation/getx/home_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearbyActivity extends StatelessWidget {
  NearbyActivity({super.key});
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.23,
          width: Get.width,
          child: Obx(
            () => ListView.builder(
                itemCount: homeController.lstNearbyActivity.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  NearbyCategoryEntity nearbyCategoryEntity =
                      homeController.lstNearbyActivity[index];
                  if (index + 1 == homeController.lstNearbyActivity.length) {
                    return Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              nearbyCategoryEntity.imageUrl,
                              fit: BoxFit.fill,
                              width: Get.width * 0.45,
                              height: Get.height * 0.16,
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                color: Colors.grey.shade300,
                                child: Icon(
                                  Icons.broken_image,
                                  color: Colors.grey.shade600,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(8),
                          //   child: CachedNetworkImage(
                          //     imageUrl: nearbyCategoryEntity.imageUrl,
                          //     width: Get.width * 0.45,
                          //     height: Get.height * 0.16,
                          //     fit: BoxFit.cover,
                          //     placeholder: (context, url) => Container(
                          //       color: Colors.grey.shade200,
                          //       child: Center(
                          //         child: CircularProgressIndicator(),
                          //       ),
                          //     ),
                          //     errorWidget: (context, url, error) =>
                          // Container(
                          //       color: Colors.grey.shade300,
                          //       child: Icon(
                          //         Icons.broken_image,
                          //         color: Colors.grey.shade600,
                          //         size: 40,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Container(
                            // height: 10,
                            width: Get.width * 0.45,
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              nearbyCategoryEntity.title,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text:
                                      "${nearbyCategoryEntity.city.toLowerCase().tr} . ${nearbyCategoryEntity.rate}",
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
                            nearbyCategoryEntity.imageUrl,
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
                            nearbyCategoryEntity.title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    "Marrakech . ${nearbyCategoryEntity.rate}",
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
          ),
        )
      ],
    );
  }
}
