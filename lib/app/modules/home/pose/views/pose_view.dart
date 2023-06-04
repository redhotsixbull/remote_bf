import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pose_controller.dart';

class PoseView extends GetView<PoseController> {
  const PoseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PoseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PoseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
