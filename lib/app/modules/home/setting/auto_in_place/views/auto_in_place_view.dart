import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/auto_in_place_controller.dart';

class AutoInPlaceView extends GetView<AutoInPlaceController> {
  const AutoInPlaceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BFColor.primaryColor,
        appBar: const BFAppBar(
          title: "자동 원위치",
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
                    "자동 원위치",
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
                "마사지 종료시 마사지 체어가 원위치로 자동 복귀됩니다.",
                style: BFGraphy.bfText2023.detail2
                    .copyWith(color: BFColor.gray500),
              ),
            ),
          ],
        ));
  }
}
