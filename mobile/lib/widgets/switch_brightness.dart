import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

class SwitchBrightness extends StatelessWidget {
  const SwitchBrightness({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box("settings");
    final darkMode = false.obs;
    darkMode.value = box.get("darkMode", defaultValue: Get.theme.brightness == Brightness.dark);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      Get.changeThemeMode(darkMode.value ? ThemeMode.dark : ThemeMode.light);
    });

    return Obx(() => Switch(
      value: darkMode.value,
      thumbIcon: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const Icon(Icons.nightlight_round);
        }

        return const Icon(Icons.wb_sunny);
      }),
      onChanged: (v) {
        box.put("darkMode", v);
        darkMode.value = v;
        Get.changeThemeMode(v ? ThemeMode.dark : ThemeMode.light);
      }
    ));
  }
}