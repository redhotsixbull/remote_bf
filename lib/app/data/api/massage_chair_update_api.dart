class MassageChairUpdateApi {
  const MassageChairUpdateApi._();

  static Future<String> getCurrentChairVersion() async {
    await Future.delayed(Duration(seconds: 2));
    return "v1.0.0";
  }

  static Future<String> getLatestChairUpdateDate() async {
    await Future.delayed(Duration(seconds: 2));
    return "2023-01-01 12:00";
  }

  static Future<String> getLatestChairVersion() async {
    await Future.delayed(Duration(seconds: 2));
    return "v2.0.0";
  }

  static Future<void> massageChairUpdate() async {
    //마사지 체어 업데이트 API
    await Future.delayed(Duration(seconds: 2));
    //길이 리턴
  }
}
