import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/action/message_notification.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/util/chair_update_popup.dart';
import 'package:remote_bf/util/latest_chair_update_history_popup.dart';

import '../controllers/massage_chair_update_controller.dart';

class MassageChairUpdateView extends GetView<MassageChairUpdateController> {
  const MassageChairUpdateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(MassageChairUpdateController());
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "마사지체어 업데이트",
        appbarColor: BFColor.primaryColor,
      ),
      body: Obx(() {
        if (controller.completeLoad.value) {
          return Center(
              child: Text(
            "업데이트 확인중.",
            style: BFGraphy.bfText2023.detail1,
          ));
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset("assets/chair/img_chair.png"),
              )),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "현재 버전",
                          style: BFGraphy.bfText2023.body2,
                        ),
                        Text(
                          controller.currentVersion,
                          style: BFGraphy.bfText2023.body2
                              .copyWith(color: BFColor.gold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "최근 업데이트",
                          style: BFGraphy.bfText2023.body2,
                        ),
                        Text(
                          controller.latestUpdateDate,
                          style: BFGraphy.bfText2023.body2
                              .copyWith(color: BFColor.gold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Text(
                      "최신 버전인지 확인하려면 네트워크 연결이 필요합니다.",
                      style: BFGraphy.bfText2023.detail2
                          .copyWith(color: BFColor.gray500),
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                ],
              ),
              controller.canUpdateChair
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: InkWell(
                        onTap: () {
                          showPopup(context, ChairUpdatePopup());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(99),
                              color: BFColor.gold),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Center(
                              child: Text(
                                "최신 버전으로 업데이트",
                                style: BFGraphy.bfText2023.detail1
                                    .copyWith(color: BFColor.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: InkWell(
                        onTap: () {
                          showPopup(context, LatestChairUpdateHistoryPopup());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(99),
                              color: BFColor.white),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Center(
                              child: Text(
                                "최근 업데이트 내역보기",
                                style: BFGraphy.bfText2023.detail1
                                    .copyWith(color: BFColor.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
              const SizedBox(
                height: 122,
              ),
            ],
          );
        }
      }),
    );
  }

  chairUpdateStatusWidget(ChairUpdateStatus chairUpdateStatus) {
    switch (chairUpdateStatus) {
      case ChairUpdateStatus.normal:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "현재 버전",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Text(
                    controller.currentVersion,
                    style:
                        BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "최근 업데이트",
                    style: BFGraphy.bfText2023.body2,
                  ),
                  Text(
                    controller.latestUpdateDate,
                    style:
                        BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                "최신 버전인지 확인하려면 네트워크 연결이 필요합니다.",
                style: BFGraphy.bfText2023.detail2
                    .copyWith(color: BFColor.gray500),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
          ],
        );
      case ChairUpdateStatus.downloadProgress:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 다운로드 중...",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "75%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "00:00:00",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
                Text(
                  "348.52MB / 46470.MB",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.downloadDone:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 다운로드 완료",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "100%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 중에는 마사지 체어를 사용할 수 없습니다.",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.downloadCancel:
        break;
      case ChairUpdateStatus.downloadPause:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "일시정지",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "75%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 0.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "00:00:00",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
                Text(
                  "348.52MB / 46470.MB",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.downloadStop:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "다운로드중 문제가 발생하였습니다.",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "75%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 0.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "00:00:00",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
                Text(
                  "348.52MB / 46470.MB",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.downloadResume:
        //업데이트 다시 시작 -> updateProgress
        break;
      case ChairUpdateStatus.downloadError:
        //업데이트 중 에러 -> stop
        break;
      case ChairUpdateStatus.updateInstall:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 중...",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "50%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 0.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 중에는 마사지 체어를 사용할 수 없습니다.",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.updateDone:
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트 완료 중...",
                  style:
                      BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                ),
                Text(
                  "100%",
                  style: BFGraphy.bfText2023.body2,
                ),
              ],
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(BFColor.gold),
              backgroundColor: BFColor.gray200,
              value: 0.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "업데이트가 완료되면 리모컨이 다시 시작합니다.",
                  style: BFGraphy.bfText2023.detail2
                      .copyWith(color: BFColor.gray500),
                ),
              ],
            ),
          ],
        );
      case ChairUpdateStatus.unKnown:
        //에러 화면 처리
        break;
    }
  }
}
