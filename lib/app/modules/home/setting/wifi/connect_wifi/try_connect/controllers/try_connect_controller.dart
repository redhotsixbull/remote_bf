import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/data/vo/wifi/wifi_info_vo.dart';

class TryConnectController extends GetxController {
  WifiInfoVo selectedWifiInfo =
      WifiInfoVo(name: "test", level: 1, secret: false);

  TextEditingController? wifiPasswordControl;

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
}
