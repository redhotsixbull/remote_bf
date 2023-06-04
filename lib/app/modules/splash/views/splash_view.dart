import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/image_loader.dart';
import 'package:remote_bf/res/bf_color.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.gray,
      body: Center(
        child: ImageBuilder.asset("assets/logo/BF_logo.png",
            width: 100, height: 100),
      ),
    );
  }
}
