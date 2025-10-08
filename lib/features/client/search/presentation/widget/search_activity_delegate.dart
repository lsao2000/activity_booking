import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchActivityDelegate extends SearchDelegate<String> {
  final List<String> searchList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Fig",
    "Grapes",
    "Kiwi",
    "Lemon",
    "Mango",
    "Orange",
    "Papaya",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Watermelon",
  ];
  // @override
  // PreferredSizeWidget? buildBottom(BuildContext context) {
  //   return super.buildBottom(context);
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    // return Text("test");
    final List<String> suggestionList = query.isEmpty
        ? []
        : searchList
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            // Show the search results based on the selected suggestion.
          },
        );
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      InkWell(
        onTap: () {
          query = "";
        },
        child: Icon(Icons.close),
      ),
      SizedBox(
        width: 10,
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> items = searchList
        .where((e) => e.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              close(context, items[index]);
            },
          );
        });
  }
}
