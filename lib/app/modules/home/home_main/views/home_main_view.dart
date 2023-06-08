import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/data/mock/home_mode_mock.dart';
import 'package:remote_bf/app/modules/home/home_main/views/widget/mode_tile.dart';
import 'package:remote_bf/app/routes/app_pages.dart';
import 'package:remote_bf/component/appbar/bf_home_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';
import 'package:remote_bf/res/bf_icon.dart';

import '../controllers/home_main_controller.dart';

class HomeMainView extends GetView<HomeMainController> {
  const HomeMainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BFHomeAppBar(
            appbarColor: BFColor.primaryColor,
            actionIcons: [
              BFIcon.ic_wifi(),
              SizedBox(
                width: 4,
              ),
              BFIcon.ic_bluetooth(),
              SizedBox(
                width: 4,
              ),
              BFIcon.ic_volume_3()
            ],
          ),
          Expanded(
              child: Container(
            color: BFColor.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Text(
                    "${controller.userName}\n${controller.recommendTitle}",
                    style: BFGraphy.bfText2023.title4,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                  child: SizedBox(
                    height: 100,
                    child: SingleChildScrollView(
                      controller: controller.recommendSlideController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                              controller.recommendTiles.length, (index) {
                        return controller.recommendTiles[index];
                      })),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: 4,
                  //inidicator 자리
                ),
                SizedBox(
                  height: 56,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: GridView.builder(
                      itemCount: massageCategoryMock.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: 95 / 104),
                      itemBuilder: (BuildContext context, int index) {
                        return ModeTile(
                            title: massageCategoryMock[index].name,
                            icon: massageCategoryMock[index].svgIcon,
                            onTap: () {
                              print(index);
                              Get.toNamed(Routes.MENU);
                            });
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
