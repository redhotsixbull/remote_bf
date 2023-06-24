import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/arlim_controller.dart';

class ArlimView extends GetView<ArlimController> {
  const ArlimView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BFColor.primaryColor,
        appBar: const BFAppBar(
          title: "알림",
          appbarColor: BFColor.primaryColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "마사지 종료 알림",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Listener(
                    onPointerDown: (_) async {},
                    child: CupertinoSwitch(
                      activeColor: BFColor.gold,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 7, 24, 7),
              child: Container(
                width: double.infinity,
                height: 1,
                color: BFColor.gray200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "마사지 체어 업데이트 알림",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Listener(
                    onPointerDown: (_) async {},
                    child: CupertinoSwitch(
                      activeColor: BFColor.gold,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 7, 24, 7),
              child: Container(
                width: double.infinity,
                height: 1,
                color: BFColor.gray200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 7, 24, 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "리모컨 업데이트 알림",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Listener(
                    onPointerDown: (_) async {},
                    child: CupertinoSwitch(
                      activeColor: BFColor.gold,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
