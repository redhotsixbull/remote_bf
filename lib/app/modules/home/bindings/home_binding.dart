import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/home_main/controllers/home_main_controller.dart';
import 'package:remote_bf/app/modules/home/massage/controllers/massage_controller.dart';
import 'package:remote_bf/app/modules/home/pose/controllers/pose_controller.dart';
import 'package:remote_bf/app/modules/home/setting/controllers/setting_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(HomeMainController());

    Get.lazyPut<MassageController>(
      () => MassageController(),
    );
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    Get.lazyPut<PoseController>(
      () => PoseController(),
    );
  }
}
