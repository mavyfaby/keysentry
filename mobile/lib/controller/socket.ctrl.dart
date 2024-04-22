import 'dart:developer';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:web_socket_client/web_socket_client.dart';

import '../enum/status.dart';

WebSocket? socket;

class SocketController extends GetxController {
  final _status = SentryStatus.disconnected.obs;
  SentryStatus get status => _status.value;
  set status(SentryStatus value) => _status.value = value;

  /// -2 = Locker is not connected
  /// -1 = Unknown locker status
  /// 0 = Locker is closed
  /// 1 = Locker is open
  final _isLocked = (-2).obs;
  int get isLocked => _isLocked.value;
  set isLocked(int value) => _isLocked.value = value;

  /// Connect to the server.
  void initSocket() {
    // If the socket is already connected, close it.
    if (socket != null) {
      socket!.close();
    }

    // Reset isLocked value.
    _isLocked.value = -2;
    // Get hive setting
    final address = Hive.box('settings').get('ip', defaultValue: 'localhost');
    // Create a WebSocket client.
    socket = WebSocket(Uri.parse('ws://$address?type=mobile'));

    // Listen to changes in the connection state.
    socket!.connection.listen((state) {
      // Reset isLocked value when connection change
      _isLocked.value = -2;

      switch (state.hashCode) {
        case 0:
        case 2:
          _status.value = SentryStatus.connecting;
        case 1:
        case 3:
          _status.value = SentryStatus.connected;
        case 4:
        default:
          _status.value = SentryStatus.disconnected;
      }
    });

    // Listen for incoming messages.
    socket!.messages.listen((message) {
      // Handle the incoming message.
      _isLocked.value = int.parse(message);
    });
  }

  /// Send a message to the server.
  void toggleLock() {
    socket?.send("1"); // 1 = toggle
  }
}