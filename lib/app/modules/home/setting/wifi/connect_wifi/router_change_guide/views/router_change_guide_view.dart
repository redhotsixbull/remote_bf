import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/router_change_guide_controller.dart';

class RouterChangeGuideView extends GetView<RouterChangeGuideController> {
  const RouterChangeGuideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "초기 설정 가이드",
        appbarColor: BFColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "Step 1",
                style: BFGraphy.bfText2023.title4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "리모컨 앱의 '설정'에서", style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "마사지체어와\n블루투스가 연결",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(
                    text: "되어 있는지 확인해주세요.", style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "*블루투스 연결이 안되어 있으면 연결해주세요",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gray500)),
              ])),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/changeStep1.png")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "Step 2",
                style: BFGraphy.bfText2023.title4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "'Wi-Fi>Wi-Fi 연결하기>연결 초기화'",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(
                    text: "버튼을 눌러 마사지체어에 저장된 기존 Wi-Fi 정보를 삭제해주세요.",
                    style: BFGraphy.bfText2023.body2),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/changeStep2.png")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "Step 3",
                style: BFGraphy.bfText2023.title4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "'초기 설정 가이드'의 1~5번 과정을 다시 진행해 주세요.",
                    style: BFGraphy.bfText2023.body2),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/changeStep3.png")),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
