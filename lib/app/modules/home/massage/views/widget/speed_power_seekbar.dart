import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';

typedef ValueChanged = Function(int);

class SpeedPowerSeekBar extends StatefulWidget {
  const SpeedPowerSeekBar(
      {Key? key, required this.onValueChange, this.currentValue = 0})
      : super(key: key);

  final ValueChanged onValueChange;
  final int currentValue;

  @override
  State<SpeedPowerSeekBar> createState() => _SpeedPowerSeekBarState();
}

class _SpeedPowerSeekBarState extends State<SpeedPowerSeekBar> {
  int rating = 0;

  int min = 0;
  int max = 7;
  double lineWidth = 2.0;
  int currentValue = 0;

  @override
  void initState() {
    super.initState();
    currentValue = widget.currentValue;
    rating = currentValue;
    if (widget.onValueChange != null) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => widget.onValueChange(getValue()));
    }
  }

  int getValue() {
    return rating;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderThemeData(
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
            max: max.toDouble(),
            min: min.toDouble(),
            value: widget.currentValue.toDouble(),
            onChanged: (value) {
              setState(() {
                widget.onValueChange(value.toInt());
              });
            },
            //label: rating.toInt().toString(),
            divisions: max - min,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(max - min + 1, (index) {
              double value = min.toDouble() + index.toDouble();
              return Column(
                children: [
                  Container(
                    width: lineWidth,
                    height: 10,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text(
                    value.toInt().toString(),
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              );
            }),
          ),
        )
      ],
    );
  }
}
