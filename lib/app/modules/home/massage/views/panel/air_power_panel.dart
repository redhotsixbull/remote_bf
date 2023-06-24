import 'package:flutter/material.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/speed_power_seekbar.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class AirPowerPanel extends StatefulWidget {
  const AirPowerPanel({Key? key}) : super(key: key);

  @override
  State<AirPowerPanel> createState() => _AirPowerPanelState();
}

class _AirPowerPanelState extends State<AirPowerPanel> {
  int updateTest = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "전체",
              style: BFGraphy.bfText2023.body2
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SpeedPowerSeekBar(
              showValueUnderline: true,
              onValueChange: (val) {
                updateTest = val;
                setState(() {});
              }),
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "어깨",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "팔",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "어깨",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "팔",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "어깨",
                        style: BFGraphy.bfText2023.body2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SpeedPowerSeekBar(
                      onValueChange: (val) {},
                      currentValue: updateTest,
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "팔",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "어깨",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "팔",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SpeedPowerSeekBar(
                    onValueChange: (val) {},
                    currentValue: updateTest,
                  ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
