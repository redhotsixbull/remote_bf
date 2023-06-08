import 'package:flutter/material.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/speed_power_seekbar.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class PowerSpeedControlPanel extends StatefulWidget {
  const PowerSpeedControlPanel({Key? key}) : super(key: key);

  @override
  State<PowerSpeedControlPanel> createState() => _PowerSpeedControlPanelState();
}

class _PowerSpeedControlPanelState extends State<PowerSpeedControlPanel> {
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
              "XD 강도",
              style: BFGraphy.bfText2023.body2
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SpeedPowerSeekBar(onValueChange: (int) {}),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "마사지 속도",
              style: BFGraphy.bfText2023.body2
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SpeedPowerSeekBar(onValueChange: (int) {}),
        ],
      ),
    );
  }
}
