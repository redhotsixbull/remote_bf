import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/massage_time_controller.dart';

class MassageTimeView extends GetView<MassageTimeController> {
  const MassageTimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "마사지 시간",
        appbarColor: BFColor.primaryColor,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  children: [
                    Text(
                      "10분",
                      style: BFGraphy.bfText2023.body2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: BFColor.gray200,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  children: [
                    Text(
                      "20분",
                      style: BFGraphy.bfText2023.body2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: BFColor.gray200,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Row(
                  children: [
                    Text(
                      "30분",
                      style: BFGraphy.bfText2023.body2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
