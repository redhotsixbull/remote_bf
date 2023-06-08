import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

class SpeedPowerControlButton extends StatefulWidget {
  const SpeedPowerControlButton(
      {Key? key,
      required this.title,
      this.select = false,
      required this.onClick})
      : super(key: key);

  final String title;
  final bool select;
  final VoidCallback onClick;

  @override
  State<SpeedPowerControlButton> createState() =>
      _SpeedPowerControlButtonState();
}

class _SpeedPowerControlButtonState extends State<SpeedPowerControlButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick;
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99),
          color: widget.select ? BFColor.white : BFColor.gray300,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
          child: Text(
            widget.title,
            style: BFGraphy.bfText2023.detail1
                .copyWith(color: widget.select ? BFColor.gray : BFColor.white),
          ),
        ),
      ),
    );
  }
}
