import 'package:remote_bf/app/data/mock/ble_device_mock.dart';
import 'package:remote_bf/app/data/vo/ble/ble_model_vo.dart';

class BlueToothApi {
  const BlueToothApi._();

  static Future<List<BleModelVo>> getRegisteredDevice() async {
    await Future.delayed(Duration(seconds: 2));
    return registerDeviceMock.toList();
  }

  static Future<List<BleModelVo>> getCanConnectDevice() async {
    await Future.delayed(Duration(seconds: 2));
    return canConnectDeviceMock.toList();
  }
}
