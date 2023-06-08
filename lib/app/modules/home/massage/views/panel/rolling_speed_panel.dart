import 'package:flutter/material.dart';
import 'package:remote_bf/app/modules/home/massage/views/widget/speed_power_seekbar.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class RollingSpeedPanel extends StatefulWidget {
  const RollingSpeedPanel({Key? key}) : super(key: key);

  @override
  State<RollingSpeedPanel> createState() => _RollingSpeedPanelState();
}

class _RollingSpeedPanelState extends State<RollingSpeedPanel> {
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
              "종아리",
              style: BFGraphy.bfText2023.body2
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SpeedPowerSeekBar(onValueChange: (val) {
            setState(() {});
          }),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "발바닥",
              style: BFGraphy.bfText2023.body2
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SpeedPowerSeekBar(
            onValueChange: (val) {},
          ),
        ],
      ),
    );
  }
}
