import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/action/message_notification.dart';
import 'package:remote_bf/app/routes/app_pages.dart';
import 'package:remote_bf/component/image_loader.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/util/bluetooth_connect_popup.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.gray,
      body: InkWell(
        onTap: () {
          showPopup(
              Get.context!,
              BlueToothConnectPopup(
                register: controller.registerDevice,
                canConnect: controller.canConnectDevice,
                onPressed: (ble) async {
                  //device 선택
                  Navigator.of(context).pop();
                  print(ble);
                  //connect ble device
                  //연결중입니다. 위젯 etc...
                  Get.offAllNamed(Routes.HOME);
                },
              ));
        },
        child: Center(
          child: ImageBuilder.asset("assets/logo/BF_logo.png",
              width: 100, height: 100),
        ),
      ),
    );
  }
}
