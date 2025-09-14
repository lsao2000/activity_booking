import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  // The list of items the user can select from.
  final List<String> _languages = ['English', 'Spanish', 'French', 'Arabic'];

  // The currently selected item. It's nullable to handle the case where nothing is selected.
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    // Set the initial value to the first item in the list.
    _selectedValue = _languages[0];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButtonFormField<String>(
        // The value of the currently selected item.
        value: _selectedValue,

        items: _languages.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),

        // This function is called when the user selects a new item.
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          switch (_selectedValue) {
            case "English":
              Locale locale = Locale("en_us");
              Get.updateLocale(locale);
              break;
            case "Spanish":
              Locale locale = Locale("es", "ES");
              Get.updateLocale(locale);
              debugPrint(Get.locale?.languageCode.toString());
              break;
            case "French":
              Locale locale = Locale("fr", "FR");
              Get.updateLocale(locale);
              debugPrint(Get.locale?.languageCode.toString());
              break;
            case "Arabic":
              Locale locale = Locale("ar", "AR");
              Get.updateLocale(locale);
              debugPrint(Get.locale?.languageCode.toString());
              break;

            default:
          }
        },

        decoration: InputDecoration(
          // Adds a rounded border.
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          icon: Icon(Icons.language, color: Colors.grey),
          hoverColor: Colors.grey.shade200,
          focusColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          // Adjusts the padding inside the dropdown.
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
      ),
    );
  }
}

// To use this widget in your app, simply add LanguageDropdown() to your widget tree.
// For example:
// Scaffold(
//   body: Center(
//     child: LanguageDropdown(),
//   ),
// );
