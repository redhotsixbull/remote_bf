import 'package:get/get.dart';
import 'package:remote_bf/app/data/api/bluetooth_api.dart';
import 'package:remote_bf/app/data/vo/ble/ble_model_vo.dart';

class SplashController extends GetxController {
  bool completeLoad = false;

  List<BleModelVo> canConnectDevice = [];
  List<BleModelVo> registerDevice = [];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    // await getRegisteredDevice();
    // await getCanConnectDevice();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getRegisteredDevice() async {
    registerDevice = await BlueToothApi.getRegisteredDevice();
  }

  getCanConnectDevice() async {
    canConnectDevice = await BlueToothApi.getCanConnectDevice();
  }
}
