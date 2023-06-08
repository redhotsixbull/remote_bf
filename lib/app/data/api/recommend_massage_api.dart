import 'package:remote_bf/app/data/mock/recommend_massage_mock.dart';
import 'package:remote_bf/app/data/vo/massagedata/massage.dart';

class RecommendMassageApi {
  const RecommendMassageApi._();

  static Future<List<Massage>> get() async {
    return recommendMassageMock;
  }

  static Future<List<Massage>> update() async {
    await Future.delayed(Duration(seconds: 2));
    return recommendMassageMock;
  }
}
