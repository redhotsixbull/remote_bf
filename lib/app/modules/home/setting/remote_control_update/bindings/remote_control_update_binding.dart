import 'package:get/get.dart';

import '../controllers/remote_control_update_controller.dart';

class RemoteControlUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemoteControlUpdateController>(
      () => RemoteControlUpdateController(),
    );
  }
}
