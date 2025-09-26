import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<String> getSessionType() async {
  FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
  String? type = await flutterSecureStorage.read(key: "type");
  return type ?? "";
}
