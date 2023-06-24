import 'package:get/get.dart';

import '../controllers/sound_controller.dart';

class SoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoundController>(
      () => SoundController(),
    );
  }
}
