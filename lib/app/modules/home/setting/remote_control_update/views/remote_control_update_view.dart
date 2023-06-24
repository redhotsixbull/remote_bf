import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/remote_control_update_controller.dart';

class RemoteControlUpdateView extends GetView<RemoteControlUpdateController> {
  const RemoteControlUpdateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RemoteControlUpdateView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RemoteControlUpdateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
