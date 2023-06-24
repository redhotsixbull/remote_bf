import 'package:get/get.dart';

import '../controllers/languange_controller.dart';

class LanguangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageController>(
      () => LanguageController(),
    );
  }
}
