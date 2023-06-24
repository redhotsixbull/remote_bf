import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';

typedef ValueChanged = Function(int);

class SpeedPowerSeekBar extends StatefulWidget {
  const SpeedPowerSeekBar(
      {Key? key,
      required this.onValueChange,
      this.currentValue = 0,
      this.showValueUnderline = false})
      : super(key: key);

  final ValueChanged onValueChange;
  final int currentValue;
  final bool showValueUnderline;

  @override
  State<SpeedPowerSeekBar> createState() => _SpeedPowerSeekBarState();
}

class _SpeedPowerSeekBarState extends State<SpeedPowerSeekBar> {
  int rating = 0;

  int min = 0;
  int max = 5;
  double lineWidth = 2.0;

  @override
  void initState() {
    super.initState();
    rating = widget.currentValue;
    if (widget.onValueChange != null) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => widget.onValueChange(getValue()));
    }
  }

  int getValue() {
    return rating;
  }

  @override
  void didUpdateWidget(covariant SpeedPowerSeekBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentValue != widget.currentValue) {
      rating = widget.currentValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          SliderTheme(
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
              max: max.toDouble(),
              min: min.toDouble(),
              value: rating.toDouble(),
              onChanged: (value) {
                setState(() {
                  rating = value.toInt();
                  widget.onValueChange(rating);
                });
              },

              //label: rating.toInt().toString(),
              divisions: max - min,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(max - min + 1, (index) {
                double value = min.toDouble() + index.toDouble();

                String text = value.toInt().toString();
                if (widget.showValueUnderline) {
                  return Container(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 12,
                        color: BFColor.gray500,
                      ),
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      Container(
                        width: lineWidth,
                        height: 6,
                        color: BFColor.gray500,
                      ),
                    ],
                  );
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}
