import 'package:get/get.dart';

import '../controllers/arlim_controller.dart';

class ArlimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArlimController>(
      () => ArlimController(),
    );
  }
}
