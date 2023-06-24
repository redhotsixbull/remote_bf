import 'package:get/get.dart';

import '../controllers/massage_time_controller.dart';

class MassageTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MassageTimeController>(
      () => MassageTimeController(),
    );
  }
}
