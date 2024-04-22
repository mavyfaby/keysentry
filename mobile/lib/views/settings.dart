import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

import '../controller/settings.ctrl.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<SettingsController>();
    final ipCtrl = TextEditingController(text: ctrl.ip);

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Server IP Address'),
              subtitle: Obx(
                () => Text(
                  ctrl.ip.toString().trim().isEmpty ? '(Not set)' : "ws://${ctrl.ip}"
                )
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: const Text('Server IP Address'),
                    content: TextField(
                      controller: ipCtrl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: "ws://",
                        labelText: 'IP Address',
                        hintText: "localhost",
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Timer(const Duration(milliseconds: 400), () {
                            ipCtrl.text = ctrl.ip;
                          });

                          Get.back();
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          ctrl.ip = ipCtrl.text;
                          Hive.box("settings").put("ip", ipCtrl.text);
                          Get.back();
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
