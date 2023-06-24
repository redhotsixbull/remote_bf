import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_head.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

import '../controllers/try_connect_controller.dart';

class TryConnectView extends GetView<TryConnectController> {
  const TryConnectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "Wi-Fi 연결하기",
        appbarColor: BFColor.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SettingListHead(
            title: "네트워크 이름",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: BFColor.gray200,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "test",
                        style: BFGraphy.bfText2023.detail1,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: BFIcon.ic_wifi(),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: BFIcon.ic_lock(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SettingListHead(
            title: "네트워크 비밀번호",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: TextField(
              controller: controller.wifiPasswordControl,
              style: BFGraphy.bfText2023.detail2,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Text(
              "비밀번호가 있는경우에만 입력해주세요.\n비밀번호가 없으면 '연결하기'버튼을 눌러주세요",
              style:
                  BFGraphy.bfText2023.detail2.copyWith(color: BFColor.gray500),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(99)),
                child: Center(
                  child: Text(
                    "연결하기",
                    style: BFGraphy.bfText2023.detail2
                        .copyWith(color: BFColor.gray500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
