import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/massage_led_controller.dart';

class MassageLedView extends GetView<MassageLedController> {
  const MassageLedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BFColor.primaryColor,
        appBar: const BFAppBar(
          title: "마사지체어 LED",
          appbarColor: BFColor.primaryColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "마사지체어LED",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Listener(
                    onPointerDown: (_) async {},
                    child: CupertinoSwitch(
                      activeColor: BFColor.gold,
                      value: true,
                      onChanged: (bool value) {
                        print(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "사이드 판넬의 LED를 켜고 끌 수 있습니다.",
                style: BFGraphy.bfText2023.detail2
                    .copyWith(color: BFColor.gray500),
              ),
            ),
          ],
        ));
  }
}
