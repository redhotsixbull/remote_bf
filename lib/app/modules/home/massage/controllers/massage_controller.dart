import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/data/vo/massagedata/category.dart';
import 'package:remote_bf/app/data/vo/massagedata/massage_data.dart';

class MassageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List<MassageCategory> tabList = <MassageCategory>[];

  @override
  void onInit() {
    super.onInit();

    tabList.addAll([
      manualBack,
      healthCare,
      mentalMassage,
      meditationMassage,
      antiNoising,
    ]);

    tabController = TabController(length: tabList.length, vsync: this);
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
