import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_head.dart';
import 'package:remote_bf/app/modules/home/setting/wifi/connect_wifi/widget/wifi_list_tile.dart';
import 'package:remote_bf/app/routes/app_pages.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

import '../controllers/connect_wifi_controller.dart';

class ConnectWifiView extends GetView<ConnectWifiController> {
  const ConnectWifiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "Wi-Fi 연결하기",
        appbarColor: BFColor.primaryColor,
      ),
      body: Obx(() {
        if (controller.canConnectWifiList.value.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BFIcon.ic_caution_nor(size: Size(48, 48)),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "연결 가능한 네트워크가 없습니다.",
                  style: BFGraphy.bfText2023.detail1,
                )
              ],
            ),
          );
        } else {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SettingListHead(
                    title: "연결 가능한 네트워크",
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          color: BFColor.gold.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: Text(
                          "연결 초기화",
                          style: BFGraphy.bfText2023.detail2
                              .copyWith(color: BFColor.gold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: BFColor.gray300),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: List.generate(
                          controller.canConnectWifiList.value.length, (index) {
                        return WifiListTile(
                          onClick: () {
                            Get.toNamed(Routes.TRY_CONNECT,
                                arguments:
                                    controller.canConnectWifiList.value[index]);
                          },
                          wifiInfoVo:
                              controller.canConnectWifiList.value[index],
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
