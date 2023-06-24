import 'package:get/get.dart';
import 'package:remote_bf/app/data/api/wifi_api.dart';
import 'package:remote_bf/app/data/vo/wifi/wifi_info_vo.dart';

class ConnectWifiController extends GetxController {
  final canConnectWifiList = <WifiInfoVo>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    canConnectWifiList.addAll(await WifiApi.getConnectWifi());
  }

  @override
  void onClose() {
    super.onClose();
  }
}
