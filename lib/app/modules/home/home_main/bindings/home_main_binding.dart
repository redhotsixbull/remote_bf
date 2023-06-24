import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/home_main/controllers/home_main_controller.dart';

class HomeMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeMainController());
  }
}
