import 'package:remote_bf/app/data/mock/wifi_info_vo_mock.dart';
import 'package:remote_bf/app/data/vo/wifi/wifi_info_vo.dart';

class WifiApi {
  const WifiApi._();

  static Future<List<WifiInfoVo>> getConnectWifi() async {
    await Future.delayed(Duration(seconds: 2));
    return connectWifiMock.toList();
  }
}
