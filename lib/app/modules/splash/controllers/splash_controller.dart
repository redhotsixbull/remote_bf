import 'package:get/get.dart';
import 'package:remote_bf/action/message_notification.dart';
import 'package:remote_bf/app/data/api/bluetooth_api.dart';
import 'package:remote_bf/app/data/vo/ble/ble_model_vo.dart';
import 'package:remote_bf/app/routes/app_pages.dart';
import 'package:remote_bf/util/bluetooth_connect_popup.dart';

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
    await getRegisteredDevice();
    await getCanConnectDevice();
    showPopup(
        Get.context!,
        BlueToothConnectPopup(
          register: registerDevice,
          canConnect: canConnectDevice,
          onPressed: (ble) async {
            //device 선택
            Get.back();
            //connect ble device
            //연결중입니다. 위젯 etc...
            Get.offAllNamed(Routes.HOME);
          },
        ));
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
