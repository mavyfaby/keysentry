import 'package:get/get.dart';

import '../enum/status.dart';

class SocketController extends GetxController {
  final _status = SentryStatus.connected.obs;
  SentryStatus get status => _status.value;
  set status(SentryStatus value) => _status.value = value;

  final _isLocked = false.obs;
  bool get isLocked => _isLocked.value;
  set isLocked(bool value) => _isLocked.value = value;
}