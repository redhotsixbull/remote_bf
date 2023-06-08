import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/data/mock/recommend_massage_mock.dart';
import 'package:remote_bf/app/data/vo/massagedata/massage.dart';
import 'package:remote_bf/app/modules/home/home_main/views/widget/recommend_massage_tile.dart';

class HomeMainController extends GetxController {
  String userName = "바디님,";
  String recommendTitle = "오늘의 추천 마사지 에요!";
  late ScrollController recommendSlideController;
  List<Widget> recommendTiles = <Widget>[];

  @override
  void onInit() async {
    super.onInit();

    recommendSlideController = ScrollController();

    // List<Massage> list = await RecommendMassageApi.get();
    List<Massage> list = recommendMassageMock;

    List<RecommendMassageTile> k = List.generate(list.length, (index) {
      return RecommendMassageTile(
        title: list[index].name,
        massageId: list[index].bleProtocol!,
        icon: list[index].svgIcon!,
      );
    });

    recommendTiles.addAll(k.toList());
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
