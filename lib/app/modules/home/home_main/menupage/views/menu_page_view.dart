import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/home_main/menupage/controllers/menu_page_controller.dart';
import 'package:remote_bf/app/modules/home/home_main/menupage/views/menu_list_view.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';

class MenuPageView extends GetView<MenuPageController> {
  const MenuPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MenuPageController());
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: BFAppBar(
        appbarColor: BFColor.primaryColor,
        title: '마사지 선택',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: TabBar(
              isScrollable: true,
              controller: controller.tabController,
              indicatorWeight: 1,
              indicatorColor: BFColor.gold,
              tabs: List.generate(controller.tabList.length, (index) {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                    child: Text(
                      controller.tabList[index].name,
                    ),
                  ),
                );
              }),
              labelColor: BFColor.gold,
              unselectedLabelColor: BFColor.gold, //선택되지 않은 Tab 의 label 색상
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: controller.tabController,
            children: List.generate(controller.tabController.length, (index) {
              return MenuListView(massageCategory: controller.tabList[index]);
            }),
          ))
        ],
      ),
    );
  }
}
