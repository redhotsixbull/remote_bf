import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_home_appbar.dart';
import 'package:remote_bf/component/bottomnavigation/bf_bottom_navigation.dart';
import 'package:remote_bf/res/bf_color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      body: const Column(
        children: [
          BFHomeAppBar(
            appbarColor: BFColor.primaryColor,
            actionIcons: [Icon(Icons.abc)],
          ),
        ],
      ),
      bottomNavigationBar: BFBottomNavigation(
        callBack: (int) {},
      ),
    );
  }
}
