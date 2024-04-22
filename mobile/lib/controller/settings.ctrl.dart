import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingsController extends GetxController {
  final _ip = "".obs;
  String get ip => _ip.value;
  set ip(String value) => _ip.value = value;

  final _darkMode = false.obs;
  bool get darkMode => _darkMode.value;
  set darkMode(bool value) => _darkMode.value = value;

  @override
  void onInit() {
    super.onInit();
    _ip.value = Hive.box("settings").get("ip", defaultValue: "");
    _darkMode.value = Hive.box("settings").get("darkMode", defaultValue: false);
  }
}