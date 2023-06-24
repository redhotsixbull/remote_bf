import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/arlim/views/arlim_view.dart';
import 'package:remote_bf/app/modules/home/setting/auto_in_place/views/auto_in_place_view.dart';
import 'package:remote_bf/app/modules/home/setting/bluetooth/views/bluetooth_view.dart';
import 'package:remote_bf/app/modules/home/setting/languange/views/languange_view.dart';
import 'package:remote_bf/app/modules/home/setting/massage_chair_update/views/massage_chair_update_view.dart';
import 'package:remote_bf/app/modules/home/setting/massage_led/views/massage_led_view.dart';
import 'package:remote_bf/app/modules/home/setting/massage_time/views/massage_time_view.dart';
import 'package:remote_bf/app/modules/home/setting/remote_control_update/views/remote_control_update_view.dart';
import 'package:remote_bf/app/modules/home/setting/sound/views/sound_view.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_head.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_tile.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_view_divider.dart';
import 'package:remote_bf/app/modules/home/setting/wifi/views/wifi_view.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    return Scaffold(
        backgroundColor: BFColor.gray,
        appBar: BFAppBar(
          title: '설정',
          appbarColor: BFColor.gray,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SettingListHead(
                title: "연결",
              ),
              SettingListTile(
                title: "WIFI",
                trailing: "연결됨",
                onClick: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WifiView()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: BFColor.gray300,
                ),
              ),
              SettingListTile(
                title: "Bluetooth",
                trailing: "연결안됨",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BluetoothView()),
                  );
                },
              ),
              const SettingViewDivider(),
              const SettingListHead(
                title: "디스플레이",
              ),
              SettingListTile(
                title: "언어",
                trailing: "한국어",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LanguageView()),
                  );
                },
              ),
              const SettingViewDivider(),
              const SettingListHead(
                title: "소리 및 알림",
              ),
              SettingListTile(
                title: "소리",
                trailing: "",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoundView()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: BFColor.gray300,
                ),
              ),
              SettingListTile(
                title: "알림",
                trailing: "",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArlimView()),
                  );
                },
              ),
              const SettingViewDivider(),
              const SettingListHead(
                title: "마사지 체어설정",
              ),
              SettingListTile(
                title: "마사지 시간",
                trailing: "20분",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MassageTimeView()),
                  );
                },
              ),
              SettingListTile(
                title: "자동 원위치",
                trailing: "켜짐",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AutoInPlaceView()),
                  );
                },
              ),
              SettingListTile(
                title: "마사지체어LED",
                trailing: "켜짐",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MassageLedView()),
                  );
                },
              ),
              const SettingViewDivider(),
              const SettingListHead(
                title: "기타 관리",
              ),
              SettingListTile(
                title: "마사지체어 업데이트",
                trailing: "v2.0 업데이트",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MassageChairUpdateView()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: BFColor.gray300,
                ),
              ),
              SettingListTile(
                title: "리모컨 업데이트",
                trailing: "",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RemoteControlUpdateView()),
                  );
                },
              ),
              const SettingViewDivider(),
              const SettingListHead(
                title: "기타 정보",
              ),
              SettingListTile(
                title: "고객센터 정보",
                trailing: "",
                onClick: () {},
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
