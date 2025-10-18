import 'package:activity_booking/features/client/bookings/domain/entities/trip/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            // Trip Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                trip.imageUrl,
                width: 100,
                height: 90,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 90,
                    color: Colors.grey.shade300,
                    child: Icon(Icons.image, color: Colors.grey.shade600),
                  );
                },
              ),
            ),
            SizedBox(width: 12),
            // Trip Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trip.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "${'total'.tr}${trip.totalPrice}",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '${trip.date}\n${trip.time}',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            // View Details Button
            TextButton(
              onPressed: () {
                Get.snackbar(
                  'Trip Details',
                  'Opening details for ${trip.title}',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              child: Text(
                'view_detail'.tr,
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
