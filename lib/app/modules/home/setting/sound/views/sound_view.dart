import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_bf/component/appbar/bf_appbar.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

import '../controllers/sound_controller.dart';

class SoundView extends GetView<SoundController> {
  const SoundView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BFColor.primaryColor,
        appBar: const BFAppBar(
          title: "소리",
          appbarColor: BFColor.primaryColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "미디어",
                      style: BFGraphy.bfText2023.body2,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: SliderTheme(
                      data: SliderThemeData(
                          overlayShape: SliderComponentShape.noOverlay,
                          valueIndicatorTextStyle: TextStyle(color: Colors.red),
                          inactiveTickMarkColor: BFColor.primaryColor,
                          activeTickMarkColor: BFColor.primaryColor,
                          tickMarkShape: SliderTickMarkShape.noTickMark,
                          valueIndicatorColor: Colors.black,
                          trackHeight: 8,
                          activeTrackColor: BFColor.gold,
                          inactiveTrackColor: BFColor.gray300,
                          thumbColor: BFColor.white,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 9,
                            disabledThumbRadius: 9,
                          )),
                      child: Slider(
                        max: 10.0,
                        min: 0,
                        value: 5,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "알림",
                      style: BFGraphy.bfText2023.body2,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: SliderTheme(
                      data: SliderThemeData(
                          overlayShape: SliderComponentShape.noOverlay,
                          valueIndicatorTextStyle: TextStyle(color: Colors.red),
                          inactiveTickMarkColor: BFColor.primaryColor,
                          activeTickMarkColor: BFColor.primaryColor,
                          tickMarkShape: SliderTickMarkShape.noTickMark,
                          valueIndicatorColor: Colors.black,
                          trackHeight: 8,
                          activeTrackColor: BFColor.gold,
                          inactiveTrackColor: BFColor.gray300,
                          thumbColor: BFColor.white,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 9,
                            disabledThumbRadius: 9,
                          )),
                      child: Slider(
                        max: 10.0,
                        min: 0,
                        value: 5,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
