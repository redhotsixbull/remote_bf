import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_main_controller.dart';

class HomeMainView extends GetView<HomeMainController> {
  const HomeMainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeMainView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeMainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
