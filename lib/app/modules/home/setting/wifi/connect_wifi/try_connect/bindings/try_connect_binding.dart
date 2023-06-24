import 'package:get/get.dart';

import '../controllers/try_connect_controller.dart';

class TryConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TryConnectController>(
      () => TryConnectController(),
    );
  }
}
