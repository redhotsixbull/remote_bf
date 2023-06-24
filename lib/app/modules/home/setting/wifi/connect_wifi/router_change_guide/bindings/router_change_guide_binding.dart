import 'package:get/get.dart';

import '../controllers/router_change_guide_controller.dart';

class RouterChangeGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RouterChangeGuideController>(
      () => RouterChangeGuideController(),
    );
  }
}
