import 'package:get/get.dart';

import '../controllers/massage_chair_update_controller.dart';

class MassageChairUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MassageChairUpdateController>(
      () => MassageChairUpdateController(),
    );
  }
}
