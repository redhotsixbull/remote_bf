import 'package:get/get.dart';

import '../controllers/bluetooth_controller.dart';

class BluetoothBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BluetoothController());
  }
}
