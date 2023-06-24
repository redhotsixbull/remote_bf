import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/arlim/controllers/arlim_controller.dart';
import 'package:remote_bf/app/modules/home/setting/auto_in_place/controllers/auto_in_place_controller.dart';
import 'package:remote_bf/app/modules/home/setting/bluetooth/controllers/bluetooth_controller.dart';
import 'package:remote_bf/app/modules/home/setting/languange/controllers/languange_controller.dart';
import 'package:remote_bf/app/modules/home/setting/massage_chair_update/controllers/massage_chair_update_controller.dart';
import 'package:remote_bf/app/modules/home/setting/massage_led/controllers/massage_led_controller.dart';
import 'package:remote_bf/app/modules/home/setting/massage_time/controllers/massage_time_controller.dart';
import 'package:remote_bf/app/modules/home/setting/remote_control_update/controllers/remote_control_update_controller.dart';
import 'package:remote_bf/app/modules/home/setting/sound/controllers/sound_controller.dart';
import 'package:remote_bf/app/modules/home/setting/wifi/controllers/wifi_controller.dart';

class SettingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Get.put(BluetoothController());
    Get.put(WifiController());
    Get.put(ArlimController());
    Get.put(AutoInPlaceController());
    Get.put(LanguageController());
    Get.put(MassageChairUpdateController());
    Get.put(MassageLedController());
    Get.put(MassageTimeController());
    Get.put(RemoteControlUpdateController());
    Get.put(SoundController());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
