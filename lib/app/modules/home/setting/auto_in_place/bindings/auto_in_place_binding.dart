import 'package:get/get.dart';

import '../controllers/auto_in_place_controller.dart';

class AutoInPlaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AutoInPlaceController>(
      () => AutoInPlaceController(),
    );
  }
}
