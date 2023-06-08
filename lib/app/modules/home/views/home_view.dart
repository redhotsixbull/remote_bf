import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/home_main/views/home_main_view.dart';
import 'package:remote_bf/app/modules/home/massage/views/massage_view.dart';
import 'package:remote_bf/app/modules/home/pose/views/pose_view.dart';
import 'package:remote_bf/app/modules/home/setting/views/setting_view.dart';
import 'package:remote_bf/component/bottomnavigation/bf_bottom_navigation.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      body: Stack(
        children: [
          Container(
            child: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeMainView(),
                MassageView(),
                PoseView(),
                SettingView(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: BFColor.gray200,
                      border:
                          Border.all(color: BFColor.gray300.withOpacity(0.2)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14))),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "전신순환",
                          style: BFGraphy.bfText2023.body2
                              .copyWith(color: BFColor.gray500),
                        ),
                        Row(
                          children: [
                            Text(
                              "20:00",
                              style: BFGraphy.bfText2023.body2
                                  .copyWith(color: BFColor.gray500),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Icon(Icons.pause_circle)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  backgroundColor: BFColor.gray200,
                  value: 0.4,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BFBottomNavigation(
        callBack: (int) {
          controller.pageController!.jumpToPage(int);
        },
      ),
    );
  }
}

// Positioned(
// bottom: 0,
// child: Container(
// color: Colors.r,
// width: double.infinity,
// child: Padding(
// padding: const EdgeInsets.fromLTRB(16.0, 13, 16, 13),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text("text"),
// Row(
// children: [
// Text("20:00"),
// Icon(Icons.pause_circle),
// ],
// )
// ],
// ),
// ),
// )),
