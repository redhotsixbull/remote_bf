import 'package:get/get.dart';

import '../controllers/init_setting_guide_controller.dart';

class InitSettingGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitSettingGuideController>(
      () => InitSettingGuideController(),
    );
  }
}
