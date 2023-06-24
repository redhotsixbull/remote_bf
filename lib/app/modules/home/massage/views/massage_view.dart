import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/action/message_notification.dart';
import 'package:remote_bf/app/modules/home/massage/views/panel/air_power_panel.dart';
import 'package:remote_bf/app/modules/home/massage/views/panel/power_speed_control_panel.dart';
import 'package:remote_bf/app/modules/home/massage/views/panel/rolling_speed_panel.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/control_shoulder_button.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/massage_control_button.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/speed_power_controll_button.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/component/dialog/bottom_sheet_select.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_icon.dart';
import 'package:remote_bf/util/control_sholuder_bottom_sheet.dart';

import '../controllers/massage_controller.dart';

class MassageView extends GetView<MassageController> {
  const MassageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BFAppBar(
        title: '',
        appbarColor: BFColor.gray200,
      ),
      backgroundColor: BFColor.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 330,
              color: BFColor.gray200,
              child: Stack(
                children: [
                  Positioned(
                    left: 47,
                    top: 0,
                    child: Container(
                      width: 231,
                      height: 231,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/chair/model.png",
                              width: 200,
                              height: 231,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 26,
                    bottom: 146,
                    child: ControlShoulderButton(
                      onUpClick: () {
                        openBottomSheet(context, ControlShoulderBottomSheet());
                      },
                      onDownClick: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 16),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: List.generate(
                                controller.massageControlCategory.keys.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: MassageControlButton(
                                  title: controller
                                      .massageControlCategory[index]!.text,
                                  currentStatus: controller
                                      .massageControlCategory[index]!
                                      .currentStatus,
                                  onClick: () async {
                                    int select = await openBottomSheet(
                                        context,
                                        BottomSheetSelect(
                                            title: "test",
                                            lists: ["1", "1", "1", "1"],
                                            currentSelect: 0));

                                    print(select);
                                  },
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                          child: GetBuilder<MassageController>(
                            builder: (controller) {
                              return Row(
                                children: List.generate(3, (index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: SpeedPowerControlButton(
                                        select: controller
                                                .currentMassageControlIndex ==
                                            index,
                                        title: controller
                                            .speedPowerCategory[index]!.text,
                                        onClick: () {
                                          controller
                                              .changeMassagePanelIndex(index);
                                        }),
                                  );
                                }),
                              );
                            },
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
                        child: Center(
                            child: BFIcon.ic_favorite(size: Size(24, 24))),
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
              child: GetBuilder<MassageController>(
                builder: (controller) {
                  if (controller.currentMassageControlIndex == 0) {
                    return PowerSpeedControlPanel();
                  } else if (controller.currentMassageControlIndex == 1) {
                    return AirPowerPanel();
                  } else if (controller.currentMassageControlIndex == 2) {
                    return RollingSpeedPanel();
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
