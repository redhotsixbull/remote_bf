import 'package:get/get.dart';
import 'package:remote_bf/app/data/api/massage_chair_update_api.dart';

enum ChairUpdateStatus {
  normal,
  downloadProgress,
  downloadDone,
  downloadCancel,
  downloadPause,
  downloadStop,
  downloadResume,
  downloadError,
  updateInstall,
  updateDone,
  unKnown,
}

class MassageChairUpdateController extends GetxController {
  RxBool completeLoad = false.obs;

  bool canUpdateChair = false;
  String latestUpdateDate = "";
  String currentVersion = "";
  String latestVersion = "";

  ChairUpdateStatus chairUpdateStatus = ChairUpdateStatus.normal;
  @override
  void onInit() async {
    super.onInit();
    latestUpdateDate = await MassageChairUpdateApi.getLatestChairUpdateDate();
    currentVersion = await MassageChairUpdateApi.getCurrentChairVersion();
    latestVersion = await MassageChairUpdateApi.getLatestChairVersion();
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
