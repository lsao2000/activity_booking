import 'package:activity_booking/features/client/search/domain/entities/search_activity_items.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ClientSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxList<SearchActivityItems> items = <SearchActivityItems>[].obs;

  RxList<bool> selectedSortingType = [true, false, false].obs;

  @override
  void onInit() {
    super.onInit();
    items.value = searchActivityItemsList;
  }

  void changeSortingType(int index) {
    List<bool> newL = selectedSortingType.map((e) => false).toList();
    newL[index] = true;
    selectedSortingType.value = newL;
  }

  Future<List<SearchActivityItems>> searchForQuery() async {
    items.value = searchActivityItemsList
        .where((e) =>
            e.title.toLowerCase().contains(searchController.text.toLowerCase()))
        .toList();
    return items;
  }

  final RxList<SearchActivityItems> searchActivityItemsList = [
    SearchActivityItems(
      rate: 4.9,
      reviews: 524,
      title: 'Sahara Desert 3-Day Safari',
      description:
          'Experience the magic of the Sahara with camel trekking, traditional Berber camps, and stunning stargazing. Includes meals and transportation.',
      price: 350.0,
      imgUrl:
          'https://images.unsplash.com/photo-1509316785289-025f5b846b35?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 412,
      title: 'Atlas Mountains Hiking Tour',
      description:
          'Full-day guided hike through the Atlas Mountains with breathtaking views, local village visits, and authentic Moroccan lunch.',
      price: 85.0,
      imgUrl:
          'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.7,
      reviews: 289,
      title: 'Marrakech Food Walking Tour',
      description:
          'Discover the flavors of Marrakech! Visit local markets, street food stalls, and traditional restaurants. Taste 10+ dishes.',
      price: 45.0,
      imgUrl:
          'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 678,
      title: 'Hot Air Balloon Ride at Sunrise',
      description:
          'Soar above Marrakech at sunrise. Enjoy panoramic views of the Atlas Mountains, palm groves, and traditional villages. Includes breakfast.',
      price: 220.0,
      imgUrl:
          'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.6,
      reviews: 195,
      title: 'Essaouira Beach & Port Day Trip',
      description:
          'Explore the charming coastal city of Essaouira. Visit the historic port, walk the beautiful beaches, and enjoy fresh seafood.',
      price: 65.0,
      imgUrl:
          'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 456,
      title: 'Traditional Moroccan Cooking Class',
      description:
          'Learn to cook authentic Moroccan dishes including tagine and couscous. Shop at local markets and enjoy your creations.',
      price: 55.0,
      imgUrl:
          'https://images.unsplash.com/photo-1556910110-a5a63dfd393c?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.7,
      reviews: 342,
      title: 'Quad Biking in Agafay Desert',
      description:
          'Thrilling 2-hour quad biking adventure through the rocky Agafay Desert. Perfect for adrenaline seekers. No experience needed.',
      price: 70.0,
      imgUrl:
          'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 891,
      title: 'Chefchaouen Blue City Tour',
      description:
          'Full-day tour to the stunning blue city of Chefchaouen. Explore narrow blue-washed streets, local handicraft shops, and cafes.',
      price: 95.0,
      imgUrl:
          'https://images.unsplash.com/photo-1519904981063-b0cf448d479e?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.5,
      reviews: 234,
      title: 'Camel Ride & Sunset Experience',
      description:
          'Romantic camel ride through palm groves at sunset. Enjoy traditional mint tea and local snacks in a Berber tent.',
      price: 40.0,
      imgUrl:
          'https://images.unsplash.com/photo-1591088398332-8a7791972843?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 567,
      title: 'Fes Medina Guided Walking Tour',
      description:
          'Explore the ancient medina of Fes, a UNESCO World Heritage site. Visit tanneries, mosques, and traditional artisan workshops.',
      price: 50.0,
      imgUrl:
          'https://images.unsplash.com/photo-1583221236791-c5c26ad5ff52?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.6,
      reviews: 178,
      title: 'Surfing Lessons in Taghazout',
      description:
          '2-hour surfing lesson on Morocco\'s best surf beaches. All equipment included. Suitable for beginners and intermediates.',
      price: 45.0,
      imgUrl:
          'https://images.unsplash.com/photo-1502680390469-be75c86b636f?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 723,
      title: 'Ouzoud Waterfalls Day Trip',
      description:
          'Visit Morocco\'s highest waterfalls. Hike scenic trails, spot wild monkeys, and enjoy a traditional lunch with waterfall views.',
      price: 75.0,
      imgUrl:
          'https://images.unsplash.com/photo-1432405972618-c60b0225b8f9?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.7,
      reviews: 445,
      title: 'Hammam & Spa Experience',
      description:
          'Authentic Moroccan spa experience. Includes traditional hammam, argan oil massage, and mint tea. Total relaxation guaranteed.',
      price: 60.0,
      imgUrl:
          'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 512,
      title: 'Ait Benhaddou Kasbah Tour',
      description:
          'Visit the famous UNESCO World Heritage kasbah. Explore ancient architecture and film locations from Gladiator and Game of Thrones.',
      price: 80.0,
      imgUrl:
          'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.6,
      reviews: 298,
      title: 'Paragliding Over Agadir',
      description:
          'Unforgettable tandem paragliding flight over Agadir\'s beaches and mountains. No experience required. Professional pilots included.',
      price: 120.0,
      imgUrl:
          'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 634,
      title: 'Jardin Majorelle & YSL Museum',
      description:
          'Explore the iconic blue garden created by Jacques Majorelle and the Yves Saint Laurent Museum. Includes skip-the-line tickets.',
      price: 35.0,
      imgUrl:
          'https://images.unsplash.com/photo-1489749798305-4fea3ae63d43?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.7,
      reviews: 387,
      title: 'Todra Gorge Adventure',
      description:
          'Spectacular day trip to Todra Gorge. Rock climbing opportunities, scenic walks, and lunch in a traditional Berber village.',
      price: 90.0,
      imgUrl:
          'https://images.unsplash.com/photo-1508923567004-3a6b8004f3d7?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 456,
      title: 'Moroccan Pottery Workshop',
      description:
          'Hands-on pottery making experience. Learn traditional techniques, create your own piece, and take it home as a souvenir.',
      price: 50.0,
      imgUrl:
          'https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.6,
      reviews: 267,
      title: 'Sunset Yacht Cruise in Agadir',
      description:
          '3-hour luxury yacht cruise along Agadir coast. Includes snacks, drinks, and stunning sunset views over the Atlantic Ocean.',
      price: 85.0,
      imgUrl:
          'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 789,
      title: 'Berber Village Homestay Experience',
      description:
          'Authentic 2-day homestay in a traditional Berber village. Experience local life, enjoy home-cooked meals, and learn about culture.',
      price: 150.0,
      imgUrl:
          'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.7,
      reviews: 312,
      title: 'Scuba Diving in Red Sea',
      description:
          'Explore vibrant coral reefs and marine life. Full equipment provided. Suitable for certified divers and beginners with instructor.',
      price: 95.0,
      imgUrl:
          'https://images.unsplash.com/photo-1530789253388-582c481c54b0?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 445,
      title: 'Wine Tasting in Vineyard',
      description:
          'Tour of local vineyard with professional sommelier. Taste 5 premium wines paired with local cheeses and charcuterie.',
      price: 65.0,
      imgUrl:
          'https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.9,
      reviews: 567,
      title: 'Helicopter City Tour',
      description:
          'Breathtaking aerial tour of the city. See all major landmarks from above. Professional pilot and safety briefing included.',
      price: 280.0,
      imgUrl:
          'https://images.unsplash.com/photo-1551632811-561732d1e306?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.6,
      reviews: 234,
      title: 'Zip Line Forest Adventure',
      description:
          'Thrilling zip line course through forest canopy. Multiple lines, platforms, and obstacles. Safety equipment and guide included.',
      price: 55.0,
      imgUrl:
          'https://images.unsplash.com/photo-1483097365279-e8acd3bf9f18?w=500&auto=format',
    ),
    SearchActivityItems(
      rate: 4.8,
      reviews: 398,
      title: 'Kayaking Sunset Tour',
      description:
          'Peaceful kayaking experience at sunset. Paddle through calm waters, spot wildlife, and enjoy spectacular sunset views.',
      price: 48.0,
      imgUrl:
          'https://images.unsplash.com/photo-1535131749006-b7f58c99034b?w=500&auto=format',
    ),
  ].obs;
}
