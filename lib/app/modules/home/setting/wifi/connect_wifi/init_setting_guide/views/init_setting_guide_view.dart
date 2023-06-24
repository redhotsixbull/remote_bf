import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/init_setting_guide_controller.dart';

class InitSettingGuideView extends GetView<InitSettingGuideController> {
  const InitSettingGuideView({Key? key}) : super(key: key);

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
                    text: "마사지체어와 Wi-Fi를 연결하려면,",
                    style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "\n스마트폰 Wi-Fi를 연결",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(text: "해 주세요.", style: BFGraphy.bfText2023.body2),
              ])),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/step1.png")),
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
                    text: "리모컨 혹은 리모컨 앱의 설정화면에서",
                    style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "\nWi-Fi상태를 '사용중'으로변경 ",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(text: "해 주세요.", style: BFGraphy.bfText2023.body2),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/step2.png")),
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
                TextSpan(text: "마사지체어 뒷면의", style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "전원 스위치를\n껏다가 다시 켜주세요.",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/step3.png")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "Step 4",
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
                TextSpan(text: "리모컨 앱의", style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "'설정>Wi-Fi>Wi-Fi 연결하기'",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(text: "를 선택해주세요.", style: BFGraphy.bfText2023.body2),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/step4.png")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "Step 5",
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
                    text: "스마트폰에 연결된 Wi-Fi 정보가 동일하게 뜨는지 확인 후,",
                    style: BFGraphy.bfText2023.body2),
                TextSpan(
                    text: "'연결하기'버튼",
                    style: BFGraphy.bfText2023.body2
                        .copyWith(color: BFColor.gold)),
                TextSpan(
                    text: "을 누르면 완료됩니다.", style: BFGraphy.bfText2023.body2),
              ])),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Image.asset("assets/img/step5.png")),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/caution.png",
                      width: 73,
                      height: 81,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1분 이내에 모든 과정을 완료해 주세요.\n연결에 실패했다면 3~5과정을 다시 진행합니다.",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(color: BFColor.gold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
