import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  PageController? pageController;

  GlobalKey<NavigatorState> navigatorKeyFirst = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> navigatorKeySecond = GlobalKey<NavigatorState>();
  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
