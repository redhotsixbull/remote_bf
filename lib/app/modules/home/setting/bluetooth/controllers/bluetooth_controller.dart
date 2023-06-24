import 'package:get/get.dart';
import 'package:remote_bf/app/data/api/bluetooth_api.dart';
import 'package:remote_bf/app/data/vo/ble/ble_model_vo.dart';

class BluetoothController extends GetxController {
  final registerBleDevice = <BleModelVo>[].obs;
  final canConnectBleDevice = <BleModelVo>[].obs;

  @override
  void onInit() async {
    super.onInit();
    registerBleDevice.value.addAll(await BlueToothApi.getRegisteredDevice());
    canConnectBleDevice.value.addAll(await BlueToothApi.getCanConnectDevice());
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
