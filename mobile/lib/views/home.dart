import 'dart:ui';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_socket_client/web_socket_client.dart';

import '../enum/status.dart';
import '../controller/socket.ctrl.dart';
import '../widgets/switch_brightness.dart';

WebSocket? socket;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final socketCtrl = Get.find<SocketController>();
    
    return RefreshIndicator(
      onRefresh: () async {
        socketCtrl.initSocket();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('KeySentry'),
          actions: [
            const SwitchBrightness(),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {
                Get.toNamed("/settings");
              },
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView(
            children: [
              const SizedBox(height: 32),
              Obx(() => Text(socketCtrl.status != SentryStatus.connected ?
                'Pull to refresh to re-connect to server.' :
                'You are connected to the server.',
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium!.copyWith(
                  color: Get.theme.colorScheme.onSurfaceVariant
                ),
              )),
              const SizedBox(height: 12),
              Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AvatarGlow(
                    glowColor: mapStatusColor(context, socketCtrl.status),
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: mapStatusColor(context, socketCtrl.status),
                        shape: BoxShape.circle,
                      )
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(mapStatusName(socketCtrl.status), style: TextStyle(
                    color: mapStatusColor(context, socketCtrl.status),
                    fontWeight: FontWeight.w500,
                  )),
                ],
              )),
              const SizedBox(height: 64),
              Center(
                child: SizedBox(
                  width: 275,
                  height: 275,
                  child: Obx(() => FilledButton(
                    onPressed: socketCtrl.status == SentryStatus.connected && socketCtrl.isLocked != -2 ? () {
                      socketCtrl.toggleLock();
                    } : null,
                    child: Text(
                      socketCtrl.status != SentryStatus.connected || socketCtrl.isLocked == -2 ? "Toggle" :
                        socketCtrl.isLocked == -1 ? "Unknown" :
                        socketCtrl.isLocked == 0 ? "Lock" : "Unlock",
                      textScaler: const TextScaler.linear(2)
                    )
                  )),
                ),
              ),
              const SizedBox(height: 64),
              Obx(() => Text(
                "Status: ${socketCtrl.status != SentryStatus.connected ? "Not connected" :
                  socketCtrl.isLocked == -2 ? "No locker connected" :
                  socketCtrl.isLocked == -1 ? "Unknown" :
                  socketCtrl.isLocked == 0 ? "Unlocked" : "Locked"
                }",
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium!.copyWith(
                  color: Get.theme.colorScheme.onSurfaceVariant
                ),
              ))
            ],
          ),
        )
      ),
    );
  }

  Color mapStatusColor(BuildContext context, SentryStatus status) {
    final brightness = Theme.of(context).brightness;

    switch (status) {
      case SentryStatus.connected:
        return brightness == Brightness.dark ? Colors.green.shade300 : Colors.green.shade600;
      case SentryStatus.disconnected:
        return Get.theme.colorScheme.error;
      case SentryStatus.connecting:
        return Get.theme.colorScheme.onSurfaceVariant;
      default:
        return Get.theme.colorScheme.onSurfaceVariant;
    }
  }

  String mapStatusName(SentryStatus status) {
    switch (status) {
      case SentryStatus.connected:
        return "Connected";
      case SentryStatus.disconnected:
        return "Disconnected";
      case SentryStatus.connecting:
        return "Connecting";
      default:
        return "Unknown";
    }
  }

  /// Map the connection state to a string
  String mapSocketStatus(int state) {
    switch (state) {
      case 0:
        return "Connecting";
      case 1:
        return "Connected";
      case 2:
        return "Reconnecting";
      case 3:
        return "Reconnected";
      case 4:
        return "Disconnecting";
      default:
        return "Disconnected";
    }
  }
}