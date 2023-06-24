import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

import '../controllers/pose_controller.dart';

class PoseView extends GetView<PoseController> {
  const PoseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: BFAppBar(
        title: '',
        appbarColor: BFColor.gray200,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: BFColor.gray200,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 231,
                    height: 231,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/chair/model_pose.png",
                            width: 200,
                            height: 231,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //TODO 앉기 다리각도 다리길이 조절별 이미지 크기 조정 후 이미지위젯과 겹치기..

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: BFColor.gray400,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: BFIcon.ic_sitdown(),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "앉기",
                              style: BFGraphy.bfText2023.detail1,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 1,
                          height: 80,
                          color: BFColor.gray400,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: BFColor.gray400,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: BFIcon.ic_step1(),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "1단계",
                              style: BFGraphy.bfText2023.detail1,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: BFColor.gray400,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: BFIcon.ic_step2(),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "2단계",
                              style: BFGraphy.bfText2023.detail1,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: BFColor.gray400,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: BFIcon.ic_step3(),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "3단계",
                              style: BFGraphy.bfText2023.detail1,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: BFColor.gray200,
          ),
          SizedBox(
            height: 32,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: BFColor.gray200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_top_nor(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(
                                "전신각도",
                                style: BFGraphy.bfText2023.detail1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_end_nor(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: BFColor.gray200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_top_nor(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(
                                "다리각도",
                                style: BFGraphy.bfText2023.detail1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_end_nor(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: BFColor.gray200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_top_nor(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(
                                "다리길이",
                                style: BFGraphy.bfText2023.detail1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BFIcon.ic_arrow_end_nor(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
