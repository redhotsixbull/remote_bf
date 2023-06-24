import 'package:get/get.dart';
import 'package:remote_bf/action/message_notification.dart';
import 'package:remote_bf/util/search_body_size_popup.dart';

class MassageController extends GetxController {
  int currentMassageControlIndex = 0;

  Map<int, SpeedPowerCategory> speedPowerCategory = <int, SpeedPowerCategory>{
    0: SpeedPowerCategory(index: 0, text: "강도/속도"),
    1: SpeedPowerCategory(index: 1, text: "에어 강도"),
    2: SpeedPowerCategory(index: 2, text: "롤링/속도"),
  };

  Map<int, MassageControlCategory> massageControlCategory =
      <int, MassageControlCategory>{
    0: MassageControlCategory(index: 0, text: "마사지 방식", currentStatus: "주무름"),
    1: MassageControlCategory(index: 1, text: "마사지 간격", currentStatus: "주무름"),
    2: MassageControlCategory(index: 2, text: "마사지 부위", currentStatus: "주무름"),
    3: MassageControlCategory(index: 3, text: "마사지 부위", currentStatus: "주무름"),
    4: MassageControlCategory(index: 4, text: "마사지 부위", currentStatus: "주무름"),
    5: MassageControlCategory(index: 5, text: "마사지 부위", currentStatus: "주무름"),
  };

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    showPopup(Get.context!, SearchBodySizePopup());
  }

  @override
  void onClose() {
    super.onClose();
  }

  changeMassagePanelIndex(int index) {
    currentMassageControlIndex = index;
    update();
  }
}

class MassageControlCategory {
  int index;
  String text;
  String currentStatus;
  MassageControlCategory(
      {required this.index, required this.text, required this.currentStatus});
}

class SpeedPowerCategory {
  int index;
  String text;

  SpeedPowerCategory({required this.index, required this.text});
}
