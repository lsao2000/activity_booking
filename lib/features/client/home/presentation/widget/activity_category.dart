import 'package:activity_booking/core/color.dart';
import 'package:activity_booking/core/utils/constants/activity_categories.dart';
import 'package:activity_booking/features/client/home/domain/entities/activity_category_entity.dart';
import 'package:activity_booking/features/client/home/presentation/getx/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityCategory extends StatelessWidget {
  ActivityCategory({super.key});
  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.03,
          width: Get.width,
          child: ListView.builder(
              itemCount: ActivityCategories.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                String item = ActivityCategories.categories[index];
                if (index + 1 == ActivityCategories.categories.length) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: black26.withAlpha(20),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                    child: Text(
                      item,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  );
                }
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      color: black26.withAlpha(20),
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                  child: Text(
                    item,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                );
              }),
        ),
        SizedBox(
          height: Get.height * 0.014,
        ),
        Obx(
          () => SizedBox(
            height: Get.height * 0.23,
            width: Get.width,
            child: ListView.builder(
                itemCount: homeController.lstActivityCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  ActivityCategoryEntity activityCategoryEntity =
                      homeController.lstActivityCategories[index];
                  if (index + 1 ==
                      homeController.lstActivityCategories.length) {
                    return Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              activityCategoryEntity.imageUrl,
                              fit: BoxFit.fill,
                              width: Get.width * 0.6,
                              height: Get.height * 0.16,
                            ),
                          ),
                          Container(
                            // height: 10,
                            width: Get.width * 0.6,
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              activityCategoryEntity.title,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "${activityCategoryEntity.city} . ${activityCategoryEntity.rate}",
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
                              TextSpan(
                                text: " . \$${activityCategoryEntity.price}",
                                style: TextStyle(
                                    color: brandColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
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
                              activityCategoryEntity.imageUrl,
                            fit: BoxFit.fill,
                            width: Get.width * 0.6,
                            height: Get.height * 0.16,
                          ),
                        ),
                        Container(
                          // height: 10,
                          width: Get.width * 0.6,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            activityCategoryEntity.title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "${activityCategoryEntity.city} . ${activityCategoryEntity.rate}",
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
                            TextSpan(
                              text: " . \$${activityCategoryEntity.price}",
                              style: TextStyle(
                                  color: brandColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
