import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/app/modules/home/massage/views/panel/power_speed_control_panel.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/speed_power_controll_button.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_icon.dart';

import '../controllers/massage_controller.dart';

class MassageView extends GetView<MassageController> {
  const MassageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.red,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 19,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(3, (index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: SpeedPowerControlButton(
                                  title: "강도/속도",
                                  onClick: () {
                                    print(index);
                                  }),
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          color: BFColor.gray200),
                      child:
                          Center(child: BFIcon.ic_favorite(size: Size(24, 24))),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PowerSpeedControlPanel(),
          ),
        ],
      ),
    );
  }
}
