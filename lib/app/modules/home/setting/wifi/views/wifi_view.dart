import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_tile.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_view_divider.dart';
import 'package:remote_bf/app/routes/app_pages.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/wifi_controller.dart';

class WifiView extends GetView<WifiController> {
  const WifiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "Wi-Fi",
        appbarColor: BFColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "사용 안 함",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  GetBuilder<WifiController>(
                    builder: (controller) {
                      return Listener(
                        onPointerDown: (_) async {
                          controller.updateUseWifi();
                        },
                        child: CupertinoSwitch(
                          activeColor: BFColor.gold,
                          value: controller.useWifi,
                          onChanged: (bool value) {
                            print(value);
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
              child: Text(
                "마사지체어와 Wi_Fi를 연결하려면, 사용중으로 설정하세요.",
                style: BFGraphy.bfText2023.detail2
                    .copyWith(color: BFColor.gray500),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SettingViewDivider(),
            SettingListTile(
              title: "Wi-Fi 연결하기",
              trailing: "",
              onClick: () {
                Get.toNamed(Routes.CONNECT_WIFI);
              },
            ),
            SettingListTile(
              title: "초기 설정 가이드",
              trailing: "",
              onClick: () {
                Get.toNamed(Routes.INIT_SETTING_GUIDE);
              },
            ),
            SettingListTile(
              title: "공유기 교체 가이드",
              trailing: "",
              onClick: () {
                Get.toNamed(Routes.ROUTER_CHANGE_GUIDE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
