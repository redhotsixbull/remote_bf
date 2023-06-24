import 'package:get/get.dart';

import '../controllers/connect_wifi_controller.dart';

class ConnectWifiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectWifiController>(
      () => ConnectWifiController(),
    );
  }
}
