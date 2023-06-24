import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/setting/bluetooth/views/widget/bluetooth_list_tile.dart';
import 'package:remote_bf/app/modules/home/setting/views/widget/setting_list_head.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/bluetooth_controller.dart';

class BluetoothView extends GetView<BluetoothController> {
  const BluetoothView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      appBar: const BFAppBar(
        title: "블루투스",
        appbarColor: BFColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SettingListHead(
                    title: "등록된 기기",
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99),
                        color: BFColor.gold.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Text(
                        "재탐색",
                        style: BFGraphy.bfText2023.detail2
                            .copyWith(color: BFColor.gold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: BFColor.gray300),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: List.generate(
                        controller.registerBleDevice.value.length, (index) {
                      return BluetoothListTile(
                        onClick: () {},
                      );
                    }),
                  ),
                ),
              ),
            ),
            const SettingListHead(
              title: "연결 가능한 기기",
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: BFColor.gray300),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: List.generate(
                        controller.canConnectBleDevice.value.length, (index) {
                      return BluetoothListTile(
                        onClick: () {},
                      );
                    }),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          decoration: BoxDecoration(
              color: BFColor.white, borderRadius: BorderRadius.circular(99)),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              "기기삭제",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
