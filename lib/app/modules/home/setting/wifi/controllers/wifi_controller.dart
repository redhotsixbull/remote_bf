import 'package:get/get.dart';

class WifiController extends GetxController {
  bool useWifi = true;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  updateUseWifi() {
    useWifi = !useWifi;
    update();
  }
}
