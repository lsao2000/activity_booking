import 'package:activity_booking/features/client/home/domain/entities/activity_category_entity.dart';
import 'package:activity_booking/features/client/home/domain/entities/nearby_category_entity.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<ActivityCategoryEntity> lstActivityCategories =
      <ActivityCategoryEntity>[].obs;
  RxList<NearbyCategoryEntity> lstNearbyActivity = <NearbyCategoryEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadNearbyActivity();
    loadActivityCategories();
  }

  void loadNearbyActivity() {
    lstNearbyActivity.value = [
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?w=500&auto=format',
        title: 'Hassan II Mosque',
        city: 'Casablanca',
        rate: 4.8,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1489749798305-4fea3ae63d43?w=500&auto=format',
        title: 'Kasbah of the Udayas',
        city: 'Rabat',
        rate: 4.6,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=500&auto=format',
        title: 'Jemaa el-Fnaa',
        city: 'Marrakech',
        rate: 4.9,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1519904981063-b0cf448d479e?w=500&auto=format',
        title: 'Chefchaouen Medina',
        city: 'Chefchaouen',
        rate: 4.7,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=500&auto=format',
        title: 'Ait Benhaddou',
        city: 'Ouarzazate',
        rate: 4.9,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=500&auto=format',
        title: 'Legzira Beach',
        city: 'Sidi Ifni',
        rate: 4.8,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?w=500',
        title: 'Hassan II Mosque',
        city: 'Casablanca',
        rate: 4.8,
      ),
      NearbyCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1597212618440-806262de4f6b?w=500',
        title: 'Kasbah of the Udayas',
        city: 'Rabat',
        rate: 4.6,
      ),
    ];
  }

  void loadActivityCategories() {
    lstActivityCategories.value = [
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1530789253388-582c481c54b0?w=500',
        title: 'Scuba Diving',
        city: 'Maldives',
        rate: 4.9,
        price: 180.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1551632811-561732d1e306?w=500',
        title: 'Helicopter Tour',
        city: 'Dubai',
        rate: 4.8,
        price: 350.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1483097365279-e8acd3bf9f18?w=500',
        title: 'Wine Tasting Tour',
        city: 'Tuscany',
        rate: 4.7,
        price: 95.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=500',
        title: 'Zip Lining Adventure',
        city: 'Costa Rica',
        rate: 4.8,
        price: 75.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=500',
        title: 'Kayaking Experience',
        city: 'Norway',
        rate: 4.6,
        price: 60.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1509316785289-025f5b846b35?w=500',
        title: 'Sahara Desert Safari',
        city: 'Merzouga',
        rate: 4.9,
        price: 150.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=500',
        title: 'Atlas Mountain Trekking',
        city: 'Imlil',
        rate: 4.7,
        price: 80.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=500',
        title: 'Quad Biking Adventure',
        city: 'Marrakech',
        rate: 4.6,
        price: 65.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=500',
        title: 'Hot Air Balloon Ride',
        city: 'Marrakech',
        rate: 4.9,
        price: 200.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=500',
        title: 'Surfing Lessons',
        city: 'Essaouira',
        rate: 4.5,
        price: 45.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=500',
        title: 'Cooking Class Experience',
        city: 'Fes',
        rate: 4.8,
        price: 55.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1591088398332-8a7791972843?w=500',
        title: 'Camel Trekking Tour',
        city: 'Agafay Desert',
        rate: 4.7,
        price: 90.0,
      ),
      ActivityCategoryEntity(
        imageUrl:
            'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=500',
        title: 'Paragliding Experience',
        city: 'Agadir',
        rate: 4.8,
        price: 120.0,
      ),
    ];
  }
}
