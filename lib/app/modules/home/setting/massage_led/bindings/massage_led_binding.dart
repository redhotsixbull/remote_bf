import 'package:get/get.dart';

import '../controllers/massage_led_controller.dart';

class MassageLedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MassageLedController>(
      () => MassageLedController(),
    );
  }
}
