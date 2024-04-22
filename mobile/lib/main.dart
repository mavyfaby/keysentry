import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';

import 'theme.dart';
import 'views/home.dart';
import 'views/settings.dart';
import 'controller/settings.ctrl.dart';
import 'controller/socket.ctrl.dart';

/// KeySentry Websocket Server
/// An arduino based project that uses a Node.js server to communicate between
/// a mobile client and a locker.
/// 
/// @author mavyfaby (Maverick Fabroa)

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  await Hive.openBox("settings");

  Get.put(SettingsController());
  Get.put(SocketController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KeySentry',
      theme: (const MaterialTheme(TextTheme())).light(),
      darkTheme: (const MaterialTheme(TextTheme())).dark(),
      themeMode: ThemeMode.light,
      initialRoute: "/home",
      routes: {
        "/home": (_) => const HomeView(),
        "/settings": (_) => const SettingsView(),
      },
    );
  }
}

